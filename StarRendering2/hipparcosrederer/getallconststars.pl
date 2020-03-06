#!/usr/bin/perl

open($f,"constellationship.fab");

while($l=<$f>){
	if(!(substr($l,0,1) eq '#')){
		$l=~s/\r*\n*//gis;
		@f=split(/ /,$l);
		shift(@f);
		shift(@f);
		#print join(",",@f)."\r\n";
		foreach $s (@f){
			$stars{$s}="Y";
		}
	}
}

#print join(",",keys(%stars));

open($f,"hip.reduced.txt");

while($l=<$f>){
	@f=split(/\,/,$l);
	$h=$f[0];
	$h=~s/\s*//gis;
	if($stars{$h} eq "Y"){
		print "$l";
	}
}