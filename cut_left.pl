#!/bin/perl

# Script para cortar sequencias left
# Diego Mariano
# 2014

if(($ARGV[0] eq "-h") or ($ARGV[0] eq "--help")){
        print "Syntax 'perl corta.pl len_cut seq_name\n'";
}

$len_corte = int($ARGV[0]);
$seq = $ARGV[1];

open(FILE,$seq);
open(OUT,'>out_trim.fa');

$i = 0;

while($line = <FILE>){
        $i = $i + 1;
        if($i%2 == 0){
                $line = substr $line,$len_corte;
        }
        print OUT $line;
}

close(FILE);
close(OUT);
