    #!/usr/bin/env perl
    use strict;
    use warnings;

    my $filename = '1_puzzleInput.txt';

    my $freq=0;

    open(PUZZLEINPUT, "<$filename") or die "Could not open file '$filename' $!";

    while( <PUZZLEINPUT>){
          chomp($_);
          $freq=$freq + $_;
    }

    print "The resulting freq is: $freq \n";