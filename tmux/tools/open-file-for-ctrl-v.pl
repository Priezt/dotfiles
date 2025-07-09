#!/usr/bin/env perl

$filename = 0;
$line_number = 0;

open LOG, ">", "/tmp/,t";
open TMUX_SHOW_BUFFER, "tmux show-buffer |";

while(<TMUX_SHOW_BUFFER>){
	print LOG $_;
	chomp;
	if(/^(\d+):/){
		$line_number = $1;
		print LOG "line: $line_number\n";
	}else{
		$filename = $_;
		print LOG "filename: $filename\n";
	}
}

close TMUX_SHOW_BUFFER;

print LOG "$filename $line_number\n";

open TMUX_BUFFER, "| tmux load-buffer -";
print TMUX_BUFFER "vi $filename +$line_number\n";
close TMUX_BUFFER;
close LOG;
