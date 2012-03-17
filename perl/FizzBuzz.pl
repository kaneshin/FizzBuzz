#===========================================================================
# File: FizzBuzz.pl
# Last Change: 17-Mar-2012.
# Maintainer: Shintaro Kaneko <kaneshin0120@gmail.com>
#===========================================================================

package FizzBuzz;
use strict;
use warnings;
use utf8;
use FindBin;
use lib "$FindBin::Bin/lib";
use FizzBuzz;

{
    my @fizzbuzz = FizzBuzz::get_FizzBuzz( $ARGV[0] );
    for (my $i = 0; $i < @fizzbuzz; $i++) {
        print ( $fizzbuzz[$i], "\n" );
    }
}
