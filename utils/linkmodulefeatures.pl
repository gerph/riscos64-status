#!/usr/bin/env perl
##
# Apply changes to tables in the markdown file suppled to link the features
# from modules, if they are known.
#

use warnings;
use strict;

my $input = shift;
my $output = shift;
my $moddir = shift;

if (!defined $input)
{
    die "Syntax: $0 <input> [<output>] [<dir>]\n";
}

if (!defined $output || !$output)
{
    $output = $input;
}

if (!defined $moddir)
{
    $moddir = 'wiki-update';
}

# Read the input file
open(my $ifh, '<', $input) || die "Cannot read $input: $!";
my $content = '';
while (<$ifh>)
{
    $content .= $_;
}
close($ifh);


sub copy_md
{
    my ($src, $dst) = @_;
    open(my $ifh, '<', $src) || die "Cannot read md src $src: $!";
    open(my $ofh, '>', $dst) || die "Cannot write md dst $dst: $!";
    while (<$ifh>)
    {
        s/ \[ \] / :black_square_button: /g;
        s/ \[X\] / :white_check_mark: /g;
        print $ofh "$_";
    }
    close($ifh);
    close($ofh);
}



my $section;
my $intable = 0;
my %headings;
my $lang;
my @newcontent;

for $_ (split /\n/, $content)
{
    chomp;
    my $line = $_;
    $line =~ s/ +$//;
    if ($line =~ /^### (.*)$/)
    {
        $section = $1;
    }
    if ($intable == 0)
    {
        # Check for the start of the table
        if ($line =~ /^\|/)
        {
            $intable = 1;
            my @labels = map { my $l = $_;
                               $l =~ s/^ +//;
                               $l =~ s/ +$//;
                               $l;
                         } split /\|/, $line;
            my $index = 0;
            %headings = ();
            for my $label (@labels)
            {
                $headings{$label} = $index;
                $index++;
            }
        }
    }
    else
    {
        # We're in a table
        if ($line eq '')
        {
            $intable = 0;
        }
        elsif ($line =~ /^\| *-/)
        {
            # The heading divider
        }
        elsif ($line =~ /^\|/)
        {
            # Table row
            my @labels = map { my $l = $_;
                               $l =~ s/\[\^[^\]]+\]//g; # Remove footnotes
                               $l =~ s/^ +//;
                               $l =~ s/ +$//;
                               $l;
                         } split /\|/, $line;

            shift @labels;
            my $name = $labels[$headings{'Name'}];

            my $lang = $headings{'Lang'} ? $labels[$headings{'Lang'}] : undef;

            if (defined $lang && ($lang eq 'Script'))
            {
                # We ignore this component
            }
            else
            {
                # See if we can link the module file
                if ($line =~ /^\| *([A-Za-z_0-9:]+) *\|/)
                {
                    my $name = $1;
                    $name =~ s/:/_/;  # Sub-component will just get underscores in the name
                    if (-f "features/Module_$name.md")
                    {
                        $line =~ s/^\|( *)([A-Za-z_0-9]+)( *)\|/|${1}[${2}](Module_${2})${3}|/;
                        print "Line fix: $line\n";

                        copy_md("features/Module_$name.md", "$moddir/Module_$name.md");
                    }
                }
            }
        }
        else
        {
            die "Unrecognised table line: $line\n";
        }
    }
    push @newcontent, $line;
}


open(my $ofh, '>', $output) || die "Cannot write $output: $!\n";
print $ofh map { "$_\n" } @newcontent;
close($ofh);
