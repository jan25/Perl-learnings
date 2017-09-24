#!/usr/bin/perl

use strict;
use warnings;

# Watch out for scalar contexts!
# Arrays are variables too! in Perl


my @arr = (4, 2, 'abc');
print "$_ " for @arr; print "\n";

print sort @arr; print "\n";
print reverse sort @arr; print "\n";

printf "%d \n", $arr[1];
printf "%s \n", $arr[$#arr];

my @sliced = @arr[2, 0, 1];
print @sliced; print "\n";


@sliced = @sliced[1..$#arr];
print @sliced; print "\n";


@sliced = @sliced[0..1];
print @sliced; print "\n";

@sliced = @sliced + @arr;
print @sliced; print "\n";