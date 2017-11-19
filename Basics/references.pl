#!/usr/bin/perl
use strict;
use warnings;

my $userRef = {
	'name' => 'Foo Bar',
	'friends' => ['Baz', 'Yum', 'Toah'], # array reference (anonymous array)
	'address' => { # hash reference (anonymous hash)
		'street' => 'Downing 10',
		'pin' => '609876'
	}
};

print $userRef->{name} . "\n";
print $userRef->{friends} . "\n";

print $_ . ' ' foreach @{$userRef->{friends}};
print "\n";

print $userRef->{address} . "\n";
print $_ . "\n" foreach values %{$userRef->{address}};

$userRef->{friends} = ['Dummy1', 'Dummy2']; # array reference
print $_ . "\n" foreach @{$userRef->{friends}};

my @newFriends = ('NewFriendOne', 'NewFriendTwo');
my $friendsRef = \@newFriends; # make a reference of array
$userRef->{friends} = $friendsRef;

print $_ . "\n" foreach @{$userRef->{friends}};
