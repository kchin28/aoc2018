#!/usr/bin/env perl
use strict;
use warnings;

  my $filename = '1_puzzleInput.txt';

  my $oldFreq=0;
  my $newFreq=0;

  my %FreqHash;

  my $result=0;

  open(PUZZLEINPUT, "<$filename") or die "Could not open file '$filename' $!";


  while ($result==0){
      while( <PUZZLEINPUT>){
            chomp($_);
            $newFreq=$oldFreq + $_;

            if ($FreqHash{$newFreq}) {
                $result= $newFreq;
                last;
            }
            else
            {
              $FreqHash{$newFreq} = 1;
              $oldFreq=$newFreq;
            }
      }

  seek PUZZLEINPUT, 0, 0;

  }
    print "The freq is: $result \n";