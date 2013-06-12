#!usr/bin/perl -w

open(F, 'datafile.txt');
my @data = <F>;
close F;

my $string = $data[0];
my $motif = $data[1];

print $string;
print $motif;
print "\n";

while ($string =~ /$motif/g) {
	print pos($string) - length($motif) + 1;
	pos($string) = pos($string) - length($motif) + 2;
	print " ";
}

print "\n";

exit;
