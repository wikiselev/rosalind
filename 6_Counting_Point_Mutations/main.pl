#!usr/bin/perl -w

use List::Util 'max';

open(F, 'datafile.txt');
my @data = <F>;
close F;

chomp @data;

my @s = split('', $data[0]);
my @t = split('', $data[1]);

my $i = 0;
my $len = @s;

for($j = 0; $j < $len; $j++) {
	if(shift @s ne shift @t) {
		$i++;
	}
}

print $i;
print "\n";

exit;