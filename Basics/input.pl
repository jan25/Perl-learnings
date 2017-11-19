#!/usr/bin/perl
use strict;
use warnings;

print 'Enter base: ';
my $base = <>;
chomp $base; # strip new line char

print 'Enter expoenent: ';
my $exp = <>;
chomp $exp;

print "$base ^ $exp = " . $base ** $exp . "\n";