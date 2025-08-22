#!/usr/bin/env perl
##
# Make statistics from the repository
#
# statistics.json contains a dictionary:
#
# '32bit' => {
#     <section name> => {
#         'states' => {
#             <state> => [
#                 <count>,
#                 [ <component names> ],
#               ]
#           },
#         'components' => {
#             <component> => <state>
#           },
#       }
#   },
# '64bit' => {
#     ... as above
#   },
# 'states' => [
#     <state names>
#   ],
# 'sections' => [
#     <section names>
#   ]
#

use warnings;
use strict;

use JSON;

my $format = shift;
if (!defined $format)
{
    $format = 'json';
}

open(my $fh, '<', 'README.md') || die "Cannot read README.md: $!\n";

my $section;
my $intable = 0;
my %headings;

my $totals = {
    '32bit' => {},
    '64bit' => {},
};
my $sec32 = undef;
my $sec64 = undef;
my $comp32 = undef;
my $comp64 = undef;

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
    # ... and the total number
    'Total'
);

my $sections = [];

$totals->{'states'} = \@states;
$totals->{'sections'} = $sections;

while (<$fh>)
{
    chomp;
    my $line = $_;
    $line =~ s/^ +//;
    $line =~ s/ +$//;
    if ($line =~ /^### (.*)$/)
    {
        $section = $1;
        my %counts32 = map { ($_ => [0, []]) } @states;
        my %counts64 = map { ($_ => [0, []]) } @states;
        $sec32 = \%counts32;
        $sec64 = \%counts64;
        $comp32 = {};
        $comp64 = {};
        $totals->{'32bit'}->{$section}->{'states'} = $sec32;
        $totals->{'32bit'}->{$section}->{'components'} = $comp32;
        $totals->{'64bit'}->{$section}->{'states'} = $sec64;
        $totals->{'64bit'}->{$section}->{'components'} = $comp64;
        push @{ $totals->{'sections'} }, $section;
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
            my $lang = $headings{'Lang'} ? $labels[$headings{'Lang'}] : undef;
            my $state32 = $labels[$headings{'C-state'}];
            my $state64 = $labels[$headings{'64-state'}];

            if (defined $lang && ($lang eq 'Script'))
            {
                # We ignore this component
                next;
            }

            if ($state32 ne 'N/A')
            {
                # The component is not marked as not-applicable, so we can include
                $sec32->{'Total'}->[0]++;
                push @{ $sec32->{'Total'}->[1] }, $name;

                if (defined $lang && ($lang eq 'C' || $lang =~ /\/C/ || $lang =~ /C\//))
                {
                    # This is a C module so it's already present in 32bit.
                    if ($state32 eq '' || $state32 eq '-')
                    {
                        $state32 = 'Complete';
                    }
                }
                if ($state32 eq '')
                {
                    $state32 = 'No work';
                }

                if (!defined $sec32->{$state32})
                {
                    die "Bad 32bit state '$state32' for $name, language '$lang' in $section ($line)\n";
                }

                $sec32->{$state32}->[0]++;
                push @{ $sec32->{$state32}->[1] }, $name;
                $comp32->{$name} = $state32;
            }

            if ($state64 ne 'N/A')
            {
                # The component is not marked as not-applicable, so we can include
                $sec64->{'Total'}->[0]++;
                push @{ $sec64->{'Total'}->[1] }, $name;

                if ($state64 eq '')
                {
                    $state64 = 'No work';
                }

                if (!defined $sec64->{$state64})
                {
                    die "Bad 64bit state '$state64' for $name, language '$lang' in $section ($line)\n";
                }

                $sec64->{$state64}->[0]++;
                push @{ $sec64->{$state64}->[1] }, $name;
                $comp64->{$name} = $state64;
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
    print encode_json($totals);
}
elsif ($format eq 'md')
{
    # Markdown format that shows how far we've got.
    for my $section (@$sections)
    {
        if ($totals->{'32bit'}->{$section}->{'states'}->{'Total'}->[0] == 0 &&
            $totals->{'64bit'}->{$section}->{'states'}->{'Total'}->[0] == 0)
        {
            next;
        }
        print "## $section\n\n";
        # Write the headings
        print "| Name | ";
        print join " | ", @states;
        print " |\n";
        print "|----|";
        print join "|", map { '---:' } @states;
        print "|\n";

        # Write the 32bit lines
        for my $row ('32bit', '64bit')
        {
            my $sec = $totals->{$row}->{$section}->{'states'};
            print "| $row |";
            for my $state (@states)
            {
                my $num = $sec->{$state}->[0];
                my $v = $num ? $num : '';
                print " $v |";
            }
            print "\n";
        }
        print "\n";
    }
}


