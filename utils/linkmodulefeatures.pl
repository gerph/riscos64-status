#!/usr/bin/env perl
##
# Apply changes to tables in the markdown file suppled to link the features
# from modules, if they are known.
#

use warnings;
use strict;

use MIME::Base64;

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

my $badgelabel = "<!-- badges -->";


sub percent_colour {
    my ($percent) = @_;
    if ($percent <= 20) {
        return "red";
    }
    elsif ($percent <= 30) {
        return "orange";
    }
    elsif ($percent <= 40) {
        return "yellow";
    }
    elsif ($percent <= 50) {
        return "yellowgreen";
    }
    elsif ($percent <= 70) {
        return "green";
    }

    return "brightgreen";
}

sub badge {
    my ($title, $percent) = @_;
    my $percent_int = int($percent);
    my $percent_colour = percent_colour($percent_int);
    my $svg = <<EOM;
<svg xmlns="http://www.w3.org/2000/svg" role="img" aria-label="$title: $percent_int%" width="96" height="20">
<title>$title: $percent_int%</title>
 <linearGradient id="s" x2="0" y2="100%">
  <stop offset="0" stop-color="#bbb" stop-opacity=".1"/>
  <stop offset="1" stop-opacity=".1"/>
 </linearGradient>
 <clipPath id="r">
  <rect width="96" height="20" rx="3" fill="#fff"/>
 </clipPath>
 <g clip-path="url(#r)">
  <rect width="53" height="20" fill="#555"/>
  <rect x="53" width="43" height="20" fill="$percent_colour"/>
  <rect width="96" height="20" fill="url(#s)"/>
 </g>
 <g fill="#fff" text-anchor="middle" font-family="Verdana,Geneva,DejaVu Sans,sans-serif" text-rendering="geometricPrecision" font-size="110">
  <text aria-hidden="true" x="275" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)" textLength="430">$title</text>
  <text x="275" y="140" transform="scale(.1)" fill="#fff" textLength="430">$title</text>
  <text aria-hidden="true" x="735" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)">$percent_int%</text>
  <text x="735" y="140" transform="scale(.1)" fill="#fff">$percent_int%</text>
 </g>
</svg>
EOM
    return $svg;
}


sub badge_uri {
    my ($title, $percent) = @_;
    my $svg = badge($title, $percent);
    my $enc = encode_base64($svg);
    $enc =~ s/\n//g;
    return "data:image/svg+xml;base64," . $enc;
}


sub copy_md
{
    my ($src, $dst) = @_;
    open(my $ifh, '<', $src) || die "Cannot read md src $src: $!";
    my $heading = 1;
    my $prefix = '';
    my $section = undef;
    my $name = '<unknown>';
    my @acc;
    my $state = {
            'counts' => [],
        };
    my $incomplete = 0;
    my $inprogress = 0;
    my $complete = 0;
    my $endsection = sub {
                my ($section, $incomplete, $complete, $inprogress, $state) = @_;
                if ($incomplete + $complete + $inprogress > 0)
                {
                    push @{ $state->{'counts'} }, [$section, $incomplete, $complete, $inprogress];
                }
            };
    while (<$ifh>)
    {
        if (/^# Module: (.*)$/)
        {
            $name = $1;
        }
        if (/^## Issues calls to$/)
        {
            $prefix = 'Uses ';
        }
        if (/^### (.*)$/)
        {
            my $newsection = $1;
            if ($section)
            {
                $endsection->($section, $incomplete, $complete, $inprogress, $state);
            }
            $section = $prefix . $newsection;
            $incomplete = 0;
            $inprogress = 0;
            $complete = 0;
        }
        my @marks;
        @marks = (/ (\[ \]) /g); $incomplete += scalar(@marks);
        @marks = (/ (\[X\]) /g); $complete += scalar(@marks);
        @marks = (/ (\[>\]) /g); $inprogress += scalar(@marks);

        s/ \[ \] / :black_square_button: /g;
        s/ \[X\] / :white_check_mark: /g;
        s/ \[>\] / :arrow_forward: /g;          # Mark features that are started
        push @acc, $_;
        if ($heading)
        {
            $heading = 0;
            my $mmd = "$src";
            $mmd =~ s/\.md$/.mmd/;
            if ($mmd ne $src && -f $mmd)
            {
                push @acc, "\n## Development status\n";
                push @acc, "\n```mermaid\n";
                open(my $mfh, '<', $mmd) || die "Cannot read mmd src $mmd: $!\n";
                while (<$mfh>)
                {
                    push @acc, $_;
                }
                push @acc, "\n```\n";
                push @acc, "\n$badgelabel\n";
            }
        }
    }
    if ($section)
    {
        $endsection->($section, $incomplete, $complete, $inprogress, $state);
    }
    close($ifh);

    print "$name\n";
    my ($tcomplete, $total) = (0, 0);
    #my @badgemd;
    my @tablehead;
    my @tablevalue;
    my $uri;
    for my $parts (@{ $state->{'counts'} })
    {
        ($section, $incomplete, $complete, $inprogress) = @$parts;
        my $outof = ($complete + $incomplete + $inprogress);
        my $pct = 100 * $complete / $outof;
        printf "  %-15s : %3i / %3i = %6.2f%%\n", $section, $complete, $outof, $pct;
        # <sigh> badges with data don't work in the wiki
        #$uri = badge_uri($section, $pct);
        #push @badgemd, sprintf "![%s: %.2f%%](%s)", $section, $pct, $uri;
        #push @badgemd, sprintf "<img src='%s' title='%s: %s'>", $uri, $section, $pct;
        push @tablehead, $section;
        push @tablevalue, sprintf "%6.2f%%", $pct;
        $tcomplete += $complete;
        $total += $outof;
    }
    if ($total > 0)
    {
        my $pct = 100 * $tcomplete / $total;
        printf "  %-15s : %3i / %3i = %6.2f%%\n", "TOTAL", $tcomplete, $total, $pct;
        #$uri = badge_uri('TOTAL', $pct);
        #push @badgemd, sprintf "![%s: %.2f%%](%s)", 'TOTAL', $pct, $uri;
        push @tablehead, 'TOTAL';
        push @tablevalue, sprintf "%6.2f%%", $pct;
    }

    my $badges = '';
    #$badges .= join ' ', @badgemd;
    $badges .= "\n\n### Completeness\n\n";
    $badges .= "|" . join('', map { " $_ |" } @tablehead) . "\n";
    $badges .= "|" . join('', map { " --- |" } @tablehead) . "\n";
    $badges .= "|" . join('', map { " $_ |" } @tablevalue) . "\n\n";

    open(my $ofh, '>', $dst) || die "Cannot write md dst $dst: $!";
    my $text = join '', @acc;
    $text =~ s/$badgelabel/$badges/;
    print $ofh $text;
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
    # If we strip trailing text, we get broken mermaid docs.
    #$line =~ s/ +$//;
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
                    my $linkname = $name;
                    $linkname =~ s/Wimp/WindowManager/;
                    if (-f "features/Module_$linkname.md")
                    {
                        $line =~ s/^\|( *)([A-Za-z_0-9:]+)( *)\|/|${1}[${2}](Module_$linkname)${3}|/;

                        copy_md("features/Module_$linkname.md", "$moddir/Module_$linkname.md");
                    }
                    else
                    {
                        print "Warning: No module link for $linkname\n";
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
