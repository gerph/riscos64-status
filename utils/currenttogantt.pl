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

my $last_phase = {};

# For each phase in order
for my $phasenum (sort { $a <=> $b } keys %{ $plan->{'phases'} })
{
    open(my $fh, '>', "planning/Phase-$phasenum.mmd") || die "Cannot write phase document: $!\n";
    my $phase = $plan->{'phases'}->{$phasenum};
    my $name = $phase->{'name'};
    my $states = $phase->{'states'};

    print $fh <<EOM;
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
        print $fh "            #${n} { fill: $colour; }\n";
        print $fh "            #${n}_started { fill: $colour; opacity: 72%; }\n";
        print $fh "            #${n}_none { fill: $colour; opacity: 33%;}\n";
        print $fh "            #${n}_none-text { fill: none;}\n";
    }
    print $fh <<EOM;

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
---
gantt
    title Phase $phasenum: $name
    dateFormat YYYY
    axisFormat  
    tickInterval 12month

    section Components / Status
EOM
    for my $pair (@$state_sequence)
    {
        my $state = $pair->[0];
        my $year = $pair->[1];
        printf $fh "    %-20s: %-18s%s, 1y\n", $state, lc $state . ",", $year;
    }

    my %states = %$states;
    if ($cumulative)
    {
        for my $component (keys %$last_phase)
        {
            if (!defined $states{$component})
            {
                $states{$component} = $last_phase->{$component};
            }
        }
    }

    for my $component (sort { $a cmp $b } keys %states)
    {
        my $intended_state = $states{$component};
        my $state = $current->{'64bit'}->{'ROM modules'}->{'components'}->{$component};
        # Component <component> is intended to be in state <intended_state>
        # Component <component> is current in state <state> for ROM modules
        if (!defined $state)
        {
            $state = 'No work';
        }
        print $fh "\n";
        print $fh "    section $component\n";
        my $intended_num = $state_lookup->{$intended_state};
        my $current_num = $state eq 'No work' ? -1 : $state_lookup->{$state};
        if (!defined $current_num)
        {
            die "State '$state' for component $component is not understood\n";
        }
        my $highest = $intended_num > $current_num ? $intended_num : $current_num;
        for my $n (0..$highest)
        {
            my $label = $n <= $current_num ? $label_complete : $label_incomplete;
            my $style = lc $state_sequence->[$n]->[0];
            my $year = lc $state_sequence->[$n]->[1];
            if ($n > $current_num)
            {
                $style .= "_none"
            }

            printf $fh "    %s    : %-18s, %i, 1y\n", $label, $style, $year;
        }
    }
    $last_phase = \%states;
}
