#!/usr/bin/perl

use strict;
use warnings;

print "Enter text: ";
chomp(my $text = <>);
print "Enter pattern: ";
chomp(my $pat = <>);
process(\$text, \$pat);

sub process {
	my ($textRef, $patRef) = @_;
	my $zStr = $$patRef . '$' . $$textRef;
	my $zRef = z_algo(\$zStr);

	my @idxs = ();
	foreach(length($$patRef) + 1 .. length($zStr) - 1) {
		push @idxs, $_ - length($$patRef) if $zRef->[$_] == length($$patRef);
	}

	print "NO MATCHES\n" if @idxs == 0;
	printf "Match at idx: %d\n", shift @idxs while @idxs;
}

sub char {
	my ($str, $idx) = @_;
	return ord(substr($$str, $idx, 1));
};

sub z_algo {
	my $str = shift;
	$str = $$str;
	my $arr = [0];
	my $l = 0;
	my $r = 0;
	foreach (1..length($str) - 1) {
		if ($_ < $r) {
			my $l_ = $_ - $l;
			if ($arr->[$l_] < $r - $_ + 1) {
				push(@$arr, $arr->[$l_]);
			}
			else {
				while ($r + 1 < length($str) and char(\$str, $r - $l + 1) == char(\$str, $r + 1)) {
					$r++;
				}
				push(@$arr, $r - $_ + 1);
			}
		}
		else {
			my $len = 0;
			while ($_ + $len < length($str) and char(\$str, $_ + $len) == char(\$str, $len)) {
				$len++;
			}
			$l = $_;
			$r = $_ + $len - 1;
			push(@$arr, $len);
		}
	}

	return $arr;
};

1;

=pod

usage: xxx.pl
Enter text followed to string to find

outputs matched indices of string inside text

=cut