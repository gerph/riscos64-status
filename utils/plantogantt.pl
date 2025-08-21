#!/usr/bin/env perl
##
# Make gantt charts for the different sections.
#
# plans.json contains a dictionary of:
#
# 'components' => {
#     <component name> => {
#         <phase number> => <state name>
#       },
#   },
# 'stacks' => {
#     <stack name> => {
#         <component name => {
#             <phase number> => <state name>
#           },
#       },
#   },
# 'phases' => {
#     <phase number> => {
#         'name' => <phase name>,
#         'states' => {
#           <component> => <phase>
#       },
#   },
#

use warnings;
use strict;

use JSON;

my $format = shift;
if (!defined $format)
{
    $format = 'json';
}

open(my $fh, '<', 'planning/Phases.md') || die "Cannot read Phases.md: $!\n";

my $section;
my $phase;
my $intable = 0;
my %headings;

my $plan = {
    'phases' => {},
        # Phase# => {
        #   'name' => name
        #   'states' => { component => state }
    'components' => {},
        # Component => { phase# => state },
    'stacks' => {},
        # Stack => {
        #   Component => { component field above }
        # }
};

my @states = (
    'No work',
    'Investigate',
    'Stub',
    'Prototype',
    'Built',
    'Internals',
    'Functional',
    'Complete',
    'Tested',
    'Automated',
);

my $sections = [];

while (<$fh>)
{
    chomp;
    my $line = $_;
    $line =~ s/^ +//;
    $line =~ s/ +$//;
    if ($line =~ /^## Phase (\d+): *(.*)$/)
    {
        $phase = $1;
        my $name = $2;
        $plan->{'phases'}->{$phase} = {
                'name' => $name,
                'states' => {}, # Component => state
            };
    }
    if ($intable == 0)
    {
        # Check for the start of the table
        if ($line =~ s/^\|//)
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
        elsif ($line =~ /^\|-/)
        {
            # The heading divider
        }
        elsif (!defined $headings{'Stack'})
        {
            # Ignore any table line for tables that don't have a stack
        }
        elsif ($line =~ s/^\|//)
        {
            # Table row
            my @labels = map { my $l = $_;
                               $l =~ s/\[\^[^\]]+\]//g; # Remove footnotes
                               $l =~ s/^ +//;
                               $l =~ s/ +$//;
                               $l;
                         } split /\|/, $line;

            my $name = $labels[$headings{'Name'}];
            my $stack = $labels[$headings{'Stack'}];
            my $state = $labels[$headings{'Functionality'}];

            $stack =~ s!/!!; # Fix I/O!

            # Phases
            $plan->{'phases'}->{$phase}->{'states'}->{$name} = $state;

            # Components
            if (!defined $plan->{'components'}->{$name})
            {
                $plan->{'components'}->{$name} = {};
            }
            $plan->{'components'}->{$name}->{$phase} = $state;

            # Stacks
            if (!defined $plan->{'stacks'}->{$stack})
            {
                $plan->{'stacks'}->{$stack} = {};
            }
            if (!defined $plan->{'stacks'}->{$stack}->{$name})
            {
                $plan->{'stacks'}->{$stack}->{$name} = $plan->{'components'}->{$name};
            }
        }
        else
        {
            die "Unrecognised table line: $line\n";
        }
    }
}

if ($format eq 'json')
{
    print encode_json($plan);
}
elsif ($format eq 'mmd')
{
    # Mermaid to show what the plan is
    for my $stack (sort { $a cmp $b } keys %{ $plan->{'stacks'} })
    {
        my $filename = "planning/Stack-$stack.mmd";
        open(my $ofh, '>', $filename) || die "Cannot write stack mermaid file '$filename': $!";
        print $ofh <<EOM;
---
    # Frontmatter config, YAML comments
    displayMode: compact
    config:
        theme: forest
        themeCSS: |
            #investigate { fill: #E03524 }
            #stub { fill: #F07C12 }
            #prototype { fill: #FFC200 }
            #built { fill: #90BC1A }
            #internals { fill: #1F64AD }
            #functional { fill: #0095AC }
            #complete { fill: #21B534 }
            #tested { fill: #4040A0 }
            #automated { fill: #903498 }
            .grid text { text-anchor: start !important;}
            g text.sectionTitle:first-child { font-style: italic; }
            #heading { rx: 0px; stroke: #487e3a; stroke-width: 1px; }

        gantt:
            useWidth: 800
            rightPadding: 0
            leftPadding: 150
            topAxis: true  #false
            numberSectionStyles: 2
---
gantt
    title Stack: $stack
    dateFormat YYYY
    axisFormat  
    tickInterval 12month

EOM
        print $ofh "\n";

        print $ofh "    section Components\n";
        for my $phase (sort { $a <=> $b } keys %{ $plan->{'phases'} })
        {
            print $ofh "    Phase $phase  : heading, 190$phase, 1y\n"
        }
        print $ofh "\n";

        for my $name (sort { $a cmp $b } keys %{ $plan->{'stacks'}->{$stack} })
        {
            my $comp = $plan->{'stacks'}->{$stack}->{$name};
            print $ofh "    section $name\n";
            for my $phase (sort { $a <=> $b } keys %$comp)
            {
                my $state = $comp->{$phase};
                my $line = sprintf "    %-12s : %s, 190%i, 1y", $state, lc($state), $phase;
                print $ofh "$line\n";
            }
            print $ofh "\n";
        }

        #for my $phase (sort { $a cmp $b } keys %{ $plan->{'phases'} })
        #{
        #    print $ofh "    Phase $phase : vert, 190" .($phase) . ", 1w\n";
        #}

        close($ofh);
    }
}
