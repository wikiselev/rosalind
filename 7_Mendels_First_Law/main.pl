#!usr/bin/perl -w

use List::Util 'max';

open(F, 'datafile.txt');
my @data = <F>;
close F;

chomp @data;

my @s = split(' ', $data[0]);

my $k = $s[0]; # homo, dom
my $m = $s[1]; # hetero
my $n = $s[2]; # homo, res

$P_1_k = $k/($k + $m + $n);
$P_1_m = 0.5*$m/($k + $m + $n)*(
				$k/($k + $m - 1 + $n) +
				0.5*($m - 1)/($k + $m - 1 + $n) +
				1
				);

$P_1_n = $n/($k + $m + $n)*(
				$k/($k + $m + $n - 1) +
				0.5*$m/($k + $m + $n - 1) +
				0
				);

$P = $P_1_k + $P_1_m + $P_1_n;

print $P;
print "\n";

exit;