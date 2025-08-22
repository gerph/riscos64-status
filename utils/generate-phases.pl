#!/usr/bin/env perl
##
# Generate the Phase-?.md file with the gantt charts
#

use warnings;
use strict;

use JSON;

my $phase = shift || die "Syntax: $0 <phase> <output.md>";
my $output = shift || die "Syntax: $0 <phase> <output.md>";

my $input = "planning/Phase-$phase.md";
open(my $ifh, '<', $input) || die "Cannot read Phase-$phase.md: $!";

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


my $mmd = $input;
$mmd =~ s/\.md$/\.mmd/;
open($ifh, '<', $mmd) || die "Cannot read $mmd: $!";
push @content, <<EOM;

## Progress chart

The faded sections indicate the intended scope of the phase.

The marked sections indicate completed functionality of components.

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

open($ifh, '>', $output) || die "Cannot create $output: $!";
for my $line (@content)
{
    print $ifh $line;
}
close($ifh);
