#!/usr/bin/perl

use strict;
use warnings;

my $str = shift;
while (<>) {
	print if /$str/;
}
print "\n";

=pod

Super simple grep kind of utility

usage: xxx.pl <regex> [<file names>]

Output: All matching lines from every file

=cut
