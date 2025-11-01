#!/usr/bin/env perl
##
# Convert the current status to a gantt-style chart showing status.
#

use warnings;
use strict;

use JSON;

# Whether the earlier phase information is included in each new phase.
# (if I set this to 1, GitHub refuses to render the later phases)
my $cumulative = 0;

my $planjson = shift || die "Syntax: $0 <plans.json> <totals.json>";
my $currentjson = shift || die "Syntax: $0 <plans.json> <totals.json>";

# Read the plan
open(my $jfh, '<', $planjson) || die "Cannot read plan '$planjson': $!";

my $json = '';
while (my $line = <$jfh>)
{
    $json .= $line;
}
my $plan = from_json($json);


# Read the totals for the current
open($jfh, '<', $currentjson) || die "Cannot read current state '$currentjson': $!";

$json = '';
while (my $line = <$jfh>)
{
    $json .= $line;
}
my $current = from_json($json);


my %state_colours = (
        'Investigate'   => '#E03524',
        'Stub'          => '#F07C12',
        'Prototype'     => '#FFC200',
        'Built'         => '#90BC1A',
        'Internals'     => '#1F64AD',
        'Functional'    => '#0095AC',
        'Complete'      => '#21B534',
        'Tested'        => '#4040A0',
        'Automated'     => '#903498',
    );


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

my $state_sequence = [];
my $state_lookup = {};
my $num = 0;
for my $state (@{ $current->{'states'} })
{
    if ($num == 0)
    {
        # We ignore the 'no work' state.
    }
    elsif ($state eq 'Total')
    {
        # We ignore the last Total marker
    }
    else
    {
        push @$state_sequence, [ $state, 1900+$num ];
        $state_lookup->{$state} = $num - 1;
    }
    $num++;
}

# We now have both the pieces of information so we can start
# to build the gantt for each phase.

my $label_started = "▶  ";
my $label_complete = "✔  ";
my $label_incomplete = "...";
my $labels = {
    'started' => $label_started,
    'complete' => $label_complete,
    'incomplete' => $label_incomplete,
    'expected' => $label_incomplete,
};

my %last_phase;
my %last_expected_phase;

my $frontmatter;
$frontmatter = <<EOM;
---
    # Frontmatter config, YAML comments
    displayMode: compact
    config:
        theme: forest
        themeCSS: |
EOM
# Write out the state colours
for my $state (sort { $a cmp $b } keys %state_colours)
{
    my $n = lc $state;
    my $colour = $state_colours{$state};
    $frontmatter .= <<EOM
            #${n} { fill: $colour; }
            #${n}_started { fill: $colour; opacity: 72%; }
            #${n}_expected { fill: $colour; opacity: 72%; }
            #${n}_none { fill: $colour; opacity: 33%; }
            #${n}_none-text { fill: none; }
EOM
}
$frontmatter .= <<EOM;

            .grid text { text-anchor: start !important;}
            g text.sectionTitle:first-child { font-style: italic; }
            #heading { rx: 0px; stroke: #487e3a; stroke-width: 1px; }

            .section0 { fill: #ffffff }
        gantt:
            useWidth: 800
            rightPadding: 0
            leftPadding: 150
            topAxis: true  #false
            numberSectionStyles: 2
EOM

my %component_state;

my $headings;
for my $pair (@$state_sequence)
{
    my $state = $pair->[0];
    my $year = $pair->[1];
    $headings .= sprintf "    %-20s: %-18s%s, 1y\n", $state, lc $state . ",", $year;
}

sub make_row
{
    my ($title, $fields) = @_;
    my $row = '';
    $row .= "\n";
    $row .= "    section $title\n";
    for my $n (0..scalar(@$state_sequence)-1)
    {
        my $state = lc $state_sequence->[$n]->[0];
        my $cell = $fields->{$state};
        if (defined $cell)
        {
            my $label = $labels->{$cell};
            my $style = '';
            my $year = lc $state_sequence->[$n]->[1];
            if ($cell eq 'complete')
            {
                $style = '';
            }
            elsif ($cell eq 'started')
            {
                $style = '_started';
            }
            elsif ($cell eq 'expected')
            {
                $style = '_expected';
            }
            elsif ($cell eq 'incomplete')
            {
                $style = '_none';
            }
            $row .= sprintf "    %s    : %-18s, %i, 1y\n", $label, "$state$style", $year;
        }
    }
    return $row;
}


# For each phase in order
for my $phasenum (sort { $a <=> $b } keys %{ $plan->{'phases'} })
{
    open(my $fh, '>', "planning/Phase-$phasenum.mmd") || die "Cannot write phase document: $!\n";
    my $phase = $plan->{'phases'}->{$phasenum};
    my $name = $phase->{'name'};
    my $states = $phase->{'states'};

    print $fh <<EOM;
$frontmatter
---
gantt
    title Phase $phasenum: $name
    dateFormat YYYY
    axisFormat  
    tickInterval 12month

    section Components / Status
$headings
EOM

    my %states = %$states;
    if ($cumulative)
    {
        for my $component (keys %last_phase)
        {
            if (!defined $states{$component})
            {
                $states{$component} = $last_phase{$component};
            }
        }
    }

    my $blocks_in_this_phase = 0;
    my $blocks_completed_in_this_phase = 0;

    for my $component (sort { $a cmp $b } keys %states)
    {
        my $intended_state = $states{$component};
        my $state = $current->{'64bit'}->{'ROM modules'}->{'components'}->{$component} // '';
        # Component <component> is intended to be in state <intended_state>
        # Component <component> is current in state <state> for ROM modules

        my $start_num = ($last_expected_phase{$component} // -1) + 1;
        my $end_num = $state_lookup->{$intended_state};
        my $state_num = $state_lookup->{$state} // -1;

        if (!defined $state)
        {
            $state = 'No work';
        }

        my $fields = {};

        for my $n ($start_num .. $end_num)
        {
            my $n_state = lc $state_sequence->[$n]->[0];
            my $cell;
            $blocks_in_this_phase += 1;
            if ($n <= $state_num)
            {
                $cell = 'complete';
                $blocks_completed_in_this_phase += 1;
            }
            else
            {
                $cell = 'incomplete';
            }
            $fields->{$n_state} = $cell;
        }

        my $row = make_row($component, $fields);
        print $fh $row;
        $last_expected_phase{$component} = $end_num;

        if (!defined $component_state{$component})
        {
            $component_state{$component} = [];
        }

        $row =~ s/section .*?\n/section Phase #$phasenum\n/;
        push @{ $component_state{$component} }, $row;
    }
    my $percent = ($blocks_completed_in_this_phase / $blocks_in_this_phase) * 100;
    my $percent_int = int(($blocks_completed_in_this_phase / $blocks_in_this_phase) * 100);
    printf "Phase #%i : %-54s : %3i / %3i blocks : %5.2f %%\n", $phasenum, $name,
                                                                $blocks_completed_in_this_phase,
                                                                $blocks_in_this_phase,
                                                                $percent;

    my $percent_colour = percent_colour($percent_int);
    open($fh, '>', "planning/Progress-$phasenum.svg") || die "Cannot write phase progress file: $!\n";
    print $fh <<EOM;
<svg xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Phase $phasenum: $percent_int%" width="96" height="20">
<title>Phase $phasenum: $percent_int%</title>
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
  <text aria-hidden="true" x="275" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)" textLength="430">Phase $phasenum</text>
  <text x="275" y="140" transform="scale(.1)" fill="#fff" textLength="430">Phase $phasenum</text>
  <text aria-hidden="true" x="735" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)">$percent_int%</text>
  <text x="735" y="140" transform="scale(.1)" fill="#fff">$percent_int%</text>
 </g>
</svg>
EOM
    %last_phase = (%last_phase, %states);
}


for my $component (keys %component_state)
{
    my $filename = $component;
    $filename =~ s/^Wimp:/WindowManager:/;
    $filename =~ s/:/_/;
    $filename = "features/Module_$filename.mmd";
    open(my $fh, '>', $filename) || die "Cannot write component progress $filename: $!\n";
    my $head = "$frontmatter";
    $head =~ s/_none-text/_expected-text/g;
    print $fh $head;
    print $fh <<EOM;
---
gantt
    title $component development
    dateFormat YYYY
    axisFormat  
    tickInterval 12month

    section Phase / Status
$headings
EOM

    my $state = $current->{'64bit'}->{'ROM modules'}->{'components'}->{$component} // '';

    my $start_num = 0;
    my $end_num = $state_lookup->{$state} // -1;

    my $fields = {};
    for my $n ($start_num .. $end_num)
    {
        my $n_state = lc $state_sequence->[$n]->[0];
        $fields->{$n_state} = 'complete';
    }

    my $currentrow = make_row("Current status", $fields);

    print $fh $currentrow;

    for my $row (@{ $component_state{$component} })
    {
        $row =~ s/_none/_expected/g;
        print $fh $row;
    }
    close($fh);
}
