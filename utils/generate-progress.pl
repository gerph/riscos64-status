#!/usr/bin/env perl
##
# Generate the Progress.md file with the gantt charts
#
# We probably should write this to a wiki page and update it live.
# Actually we should probably do that for all the planning documents.
#

use warnings;
use strict;

use JSON;

my $planjson = shift || die "Syntax: $0 <plans.json> <output.md>";
my $output = shift || die "Syntax: $0 <plans.json> <output.md>";

open(my $ifh, '<', 'planning/Progress.md') || die "Cannot read Progress.md: $!";

my @content;

my $endmarker = "<!-- Charts go here -->\n";
while (my $line = <$ifh>)
{
    push @content, $line;
    if ($line eq $endmarker)
    {
        last;
    }
}
close($ifh);

open(my $jfh, '<', $planjson) || die "Cannot read $planjson: $!";

my $json = '';
while (my $line = <$jfh>)
{
    $json .= $line;
}

my $plan = from_json($json);

for my $phase (sort { $a cmp $b } keys %{ $plan->{'phases'} })
{
    my $filename = "planning/Phase-$phase.mmd";
    my $name = $plan->{'phases'}->{$phase}->{'name'};
    open(my $ifh, '<', $filename) || die "Cannot read $filename: $!";
    push @content, <<EOM;

## Phase $phase: $name

```mermaid
EOM

    while (my $line = <$ifh>)
    {
        push @content, $line;
    }
    push @content, <<EOM;
```

EOM
    close($ifh);
}

open($ifh, '>', $output) || die "Cannot write $output: $!";
for my $line (@content)
{
    print $ifh $line;
}
close($ifh);
