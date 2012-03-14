#===========================================================================
# File: FizzBuzzTest.t
# Last Change: 13-Mar-2012.
# Maintainer: Shintaro Kaneko <kaneshin0120@gmail.com>
# Description:
#===========================================================================

use strict;
use warnings;
use utf8;
use Test::More;
use FindBin;
use lib "$FindBin::Bin/../lib";

BEGIN {
    use_ok ( 'FizzBuzz' );
};

sub func_testFizzBuzz {
    my ( $input, @expect ) = @_;
    my @result = FizzBuzz::getFizzBuzz( $input );
    is ( @result, @expect );
    my $len = @result;
    for (my $i = 0; $i < $len; $i++) {
        is ( $result[$i], $expect[$i] );
    }
}

subtest 'FizzBuzz_1' => sub {
    func_testFizzBuzz (
        16,
        (
            1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz',
            11, 'Fizz', 13, 14, 'FizzBuzz', 16
        )
    );
};

done_testing;
