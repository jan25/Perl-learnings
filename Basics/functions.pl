#!/usr/bin/perl
use strict;
use warnings;


sub fibonacci {
	my $n = $_[0]; # use @_ and $_ for fetching arguments

	my $one = 1, my $two = 1;
	while ($n > 2) {
		my $temp = $two + $one;
		$one = $two;
		$two = $temp;

		$n--;
	}

	return $two;
}

for my $n (1..20) {
	print fibonacci($n) . "\n";
}