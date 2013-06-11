#!usr/bin/perl -w

use List::Util 'max';

open(F, 'datafile.txt');
my $data = <F>;
close F;

# UUU F      CUU L      AUU I      GUU V
# UUC F      CUC L      AUC I      GUC V
# UUA L      CUA L      AUA I      GUA V
# UUG L      CUG L      AUG M      GUG V
# UCU S      CCU P      ACU T      GCU A
# UCC S      CCC P      ACC T      GCC A
# UCA S      CCA P      ACA T      GCA A
# UCG S      CCG P      ACG T      GCG A
# UAU Y      CAU H      AAU N      GAU D
# UAC Y      CAC H      AAC N      GAC D
# UAA Stop   CAA Q      AAA K      GAA E
# UAG Stop   CAG Q      AAG K      GAG E
# UGU C      CGU R      AGU S      GGU G
# UGC C      CGC R      AGC S      GGC G
# UGA Stop   CGA R      AGA R      GGA G
# UGG W      CGG R      AGG R      GGG G 

@array = ( $data =~ m/.../g );

foreach (@array) {
	if ($_ eq "UAA" or $_ eq "UAG" or $_ eq "UGA") {
		$_ = "";
		last;
	}
	$_ =~ s/UUU/F/;
	$_ =~ s/UUU/F/;
	$_ =~ s/UUC/F/;
	$_ =~ s/UUA/L/;
	$_ =~ s/UUG/L/;
	$_ =~ s/UCU/S/;
	$_ =~ s/UCC/S/;
	$_ =~ s/UCA/S/;
	$_ =~ s/UCG/S/;
	$_ =~ s/UAU/Y/;
	$_ =~ s/UAC/Y/;
	$_ =~ s/UGU/C/;
	$_ =~ s/UGC/C/;
	$_ =~ s/UGG/W/;
	$_ =~ s/CUU/L/;
	$_ =~ s/CUC/L/;
	$_ =~ s/CUA/L/;
	$_ =~ s/CUG/L/;
	$_ =~ s/CCU/P/;
	$_ =~ s/CCC/P/;
	$_ =~ s/CCA/P/;
	$_ =~ s/CCG/P/;
	$_ =~ s/CAU/H/;
	$_ =~ s/CAC/H/;
	$_ =~ s/CAA/Q/;
	$_ =~ s/CAG/Q/;
	$_ =~ s/CGU/R/;
	$_ =~ s/CGC/R/;
	$_ =~ s/CGA/R/;
	$_ =~ s/CGG/R/;
	$_ =~ s/AUU/I/;
	$_ =~ s/AUC/I/;
	$_ =~ s/AUA/I/;
	$_ =~ s/AUG/M/;
	$_ =~ s/ACU/T/;
	$_ =~ s/ACC/T/;
	$_ =~ s/ACA/T/;
	$_ =~ s/ACG/T/;
	$_ =~ s/AAU/N/;
	$_ =~ s/AAC/N/;
	$_ =~ s/AAA/K/;
	$_ =~ s/AAG/K/;
	$_ =~ s/AGU/S/;
	$_ =~ s/AGC/S/;
	$_ =~ s/AGA/R/;
	$_ =~ s/AGG/R/;
	$_ =~ s/GUU/V/;
	$_ =~ s/GUC/V/;
	$_ =~ s/GUA/V/;
	$_ =~ s/GUG/V/;
	$_ =~ s/GCU/A/;
	$_ =~ s/GCC/A/;
	$_ =~ s/GCA/A/;
	$_ =~ s/GCG/A/;
	$_ =~ s/GAU/D/;
	$_ =~ s/GAC/D/;
	$_ =~ s/GAA/E/;
	$_ =~ s/GAG/E/;
	$_ =~ s/GGU/G/;
	$_ =~ s/GGC/G/;
	$_ =~ s/GGA/G/;
	$_ =~ s/GGG/G/;
}

print @array;
print "\n";

exit;
