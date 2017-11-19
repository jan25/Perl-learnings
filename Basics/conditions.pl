#!/usr/bin/perl
use strict;
use warnings;

my $UPPER_BOUND = 100;

my $answer = int(rand($UPPER_BOUND)) + 1;

print "** Guess number between 1 and $UPPER_BOUND **\n";
print "** Enter 0 to give up! **\n";

my $guess = -1;
while ($guess ne $answer) {
	$guess = <>;
	chomp $guess;
	print "Go Lower\n" if $guess gt $answer;
	print "Go Higher\n" if $guess lt $answer;

	$guess = $answer if $guess eq 0;
}

print "Correct answer: " . $answer . "\n";
print "END OF GAME\n";