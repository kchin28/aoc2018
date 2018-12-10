 #!/usr/bin/env perl
    use strict;
    use warnings;

    my $filename = '2_puzzleinput.txt';

    my $two=0;
    my $three=0;
    my $result=0;

    open(PUZZLEINPUT, "<$filename") or die "Could not open file '$filename' $!";

    while( <PUZZLEINPUT>){
          chomp($_);
          if ($_ =~ /[a-z]{2}?/) {
            $two=$two+1;
          }
          if ($_ =~ /[a-z]{3}?/) {
            $three=$three+1;
          }
    }

   $result = $two*$three;
   print "The checksum is: $result \n";