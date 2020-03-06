#!/usr/bin/perl

open($h,"stars.txt");

%stars={};

while($l=<$h>){
	@fields=split(/\,/,$l);
	$hip=$fields[0];
	$hip=~s/\s//gis;
	$stars{$hip}="$fields[1],$fields[2]";
}

close($h);

open($f,"lines.txt");

while($l=<$f>){
	$l=~s/\s+//gis;
	@fields=split(/\,/,$l);
	print "[";
	for($x=2;$x<@fields;$x++){
		print "$stars{$fields[$x]}";
		if($x<@fields){ print ",";}
	}
	print "],\r\n";
}