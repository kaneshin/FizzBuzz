#===========================================================================
# File: FizzBuzz.pl
# Last Change: 13-Mar-2012.
# Maintainer: Shintaro Kaneko <kaneshin0120@gmail.com>
# Description:
# ToDo:
#   Add error message
#===========================================================================

package FizzBuzz;
use strict;
use warnings;
use utf8;
use FindBin;
use lib "$FindBin::Bin/lib";
use FizzBuzz;

{
    my @fizzbuzz = FizzBuzz::getFizzBuzz( $ARGV[0] );
    for (my $i = 0; $i < @fizzbuzz; $i++) {
        print ( $fizzbuzz[$i], "\n" );
    }
}
