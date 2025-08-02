#!/usr/bin/env perl
##
# Update the Stacks.md file with the gantt charts
#

use warnings;
use strict;

use JSON;

my $planjson = shift || die "Syntax: $0 <plans.json>";

open(my $ifh, '<', 'planning/Stacks.md') || die "Cannot read Stacks.md: $!";

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

for my $stack (sort { $a cmp $b } keys %{ $plan->{'stacks'} })
{
    my $filename = $stack;
    $filename =~ s!/!!; # Fix I/O
    $filename = "planning/Stack-$filename.mmd";
    open(my $ifh, '<', $filename) || die "Cannot read $filename: $!";
    push @content, <<EOM;

## Stack: $stack

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

open($ifh, '>', 'planning/Stacks.md') || die "Cannot re-rewrite Stacks.md: $!";
for my $line (@content)
{
    print $ifh $line;
}
close($ifh);
