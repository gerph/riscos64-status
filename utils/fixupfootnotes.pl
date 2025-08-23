#!/usr/bin/env perl
##
# Apply changes to the markdown file supplied, replacing markdown footnotes
# with regular HTML type links. This is because GitHub's markdown processing
# only works in the main markdown pages, not the Wiki. Which is weird because
# being able to use the footnotes in the wiki would seem like the more common
# thing to do.
#

use warnings;
use strict;

my $input = shift;
my $output = shift;

if (!defined $input)
{
    die "Syntax: $0 <input> [<output>]\n";
}

if (!defined $output)
{
    $output = $input;
}

# Read the input file
open(my $ifh, '<', $input) || die "Cannot read $input: $!";
my $content = '';
while (<$ifh>)
{
    $content .= $_;
}
close($ifh);


# Now perform the replacements.
# Footnote references look like:
#   Text[^footnote]
# Footnote targets look like:
#   [^footnote]: Footnote meaning.


# Find all the footnote references and targets.
my @footnotes = ($content =~ /\[\^([^\]]+)\](?!:)/g);
my @targets = ($content =~ /^\[\^([^\]]+)\]: (.*)$/mg);

# For all the targets, work out what they contain.
my $failed = 0;
my $num = 1;

my %identifiers;
my $id;
while (@targets)
{
    my $id = shift @targets;
    my $text = shift @targets;
    print "Id '$id' => $text\n";
    $identifiers{$id} = {
            'num' => $num,
            'text' => $text,
            'id' => "foodnote-$id",
            'returns' => [],
        };
    $num++;
}


# Now replace the references with the link to the target.
my $rnum = 0;
for $id (@footnotes)
{
    # Check that the target exists
    my $target = $identifiers{$id};
    if (!defined $target)
    {
        print "Footnote target does not exist for id '$id'\n";
        $failed = 1;
        next;
    }

    # Fix up the source link
    my $ident = $identifiers{$id};
    my $returnid = "footnotereturn-$rnum";
    if (! ($content =~ s/\[\^$id\](?!:)/<sup><a name="$returnid"><\/a>[note $ident->{'num'}](#$ident->{'id'})<\/sup> /))
    {
        print "Failed to replace footnote for $id\n";
        $failed = 1;
    }
    $rnum++;

    push @{ $target->{'returns'} }, $returnid;
}

# Finally replace all the targets with their anchors and backlinks.
for $id (keys %identifiers)
{
    my $ident = $identifiers{$id};
    my $replacement = "\n<sup><a name=\"$ident->{'id'}\"></a>note $ident->{'num'}</sup>: $ident->{'text'}";
    for my $retid (@{ $ident->{'returns'} })
    {
        $replacement .= " [⏎](#$retid)";
    }
    if (! ($content =~ s/^\[\^\Q$id\E\]: \Q$ident->{'text'}\E/$replacement/m))
    {
        print "Failed to replace target for $id\n";
        $failed = 1;
    }
}

if ($failed)
{
    die "Replacement of footnotes failed\n";
}

open(my $ofh, '>', $output) || die "Cannot write $output: $!\n";
print $ofh $content;
close($ofh);
