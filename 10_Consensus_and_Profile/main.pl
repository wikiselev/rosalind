#!usr/bin/perl -w

use warnings; use strict;
use List::Util 'max';

open(F, 'datafile.txt');
my @data = <F>;
close F;

my @data_filt = ();

foreach ( @data ) {
	if ( $_ =~ /^>/ ) {
		next;
	} else {
		push @data_filt, $_;
	}
}

my @A = ();
push @A, 0, for ( 0..(length($data_filt[0]) - 2) );
my @C = ();
push @C, 0, for ( 0..(length($data_filt[0]) - 2) );
my @T = ();
push @T, 0, for ( 0..(length($data_filt[0]) - 2) );
my @G = ();
push @G, 0, for ( 0..(length($data_filt[0]) - 2) );

my $i = 0;

foreach ( @data_filt ) {
	my @letters = split('', $_);
	$i = 0;
	foreach ( @letters ) {
		if ( $_ eq 'A') {
			$A[$i] += 1;
		}
		if ( $_ eq 'C') {
			$C[$i] += 1;
		}
		if ( $_ eq 'T') {
			$T[$i] += 1;
		}
		if ( $_ eq 'G') {
			$G[$i] += 1;
		}
		$i++;
	}
}

my @all = (@A, @C, @T, @G);

for ($i = 0; $i < length($data_filt[0]) - 1; $i++) {
	print max $all[];
}

# 		@nts = split('', $_)
# 		if (shift @nts eq "A") {
# 			push(@A, )
# 		}



# print $strings[1];

# my @names = ();
# my @content = ();

# foreach (@strings) {
# 	my @letters = split('', $_);
# 	push(@names, join('', splice @letters, 0, 13));
# 	push(@content, (join('', @letters) =~ tr/GCgc//)/@letters*100);
# }

# my $maxgc = max @content;
# my @index = grep $content[$_] eq $maxgc , 0.. $#content;

# print $names[$index[0]];
# print "\n";
# print $maxgc;
# print "\n";

# exit;