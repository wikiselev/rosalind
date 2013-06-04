#!usr/bin/perl -w

use List::Util 'max';

open(F, 'datafile.txt');
my @data = <F>;
close F;

chomp @data;
my $string = join('', @data);
my @strings = split('>', $string);
shift @strings;

my @names = ();
my @content = ();

foreach (@strings) {
	my @letters = split('', $_);
	push(@names, join('', splice @letters, 0, 13));
	push(@content, (join('', @letters) =~ tr/GCgc//)/@letters*100);
}

my $maxgc = max @content;
my @index = grep $content[$_] eq $maxgc , 0.. $#content;

print $names[$index[0]];
print "\n";
print $maxgc;
print "\n";

exit;