#===========================================================================
# File: FizzBuzzTest.t
# Last Change: 17-Mar-2012.
# Maintainer: Shintaro Kaneko <kaneshin0120@gmail.com>
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

sub func_test_FizzBuzz {
    print "==================================================\n";
    print " Testing -----------------------------------------\n";
    my @expect = @_; # $_[0] => input, $_[N] => except.
    my @result = FizzBuzz::get_FizzBuzz( shift @expect );
    is ( @result, @expect );
    for (my $i = 0; $i < @result; $i++) {
        is ( $result[$i], $expect[$i] );
    }
}

subtest 'FizzBuzz(16)' => sub {
    func_test_FizzBuzz (
        16,
        (
            1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz',
            11, 'Fizz', 13, 14, 'FizzBuzz', 16
        )
    );
};

subtest 'FizzBuzz(0)' => sub {
    func_test_FizzBuzz (
        0,
        ()
    );
};

subtest 'FizzBuzz(-1)' => sub {
    func_test_FizzBuzz (
        -1,
        ()
    );
};

subtest 'FizzBuzz("16")' => sub {
    func_test_FizzBuzz (
        '16',
        (
            1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz',
            11, 'Fizz', 13, 14, 'FizzBuzz', 16
        )
    );
};

subtest 'FizzBuzz("0")' => sub {
    func_test_FizzBuzz (
        '0',
        ()
    );
};

subtest 'FizzBuzz("-1")' => sub {
    func_test_FizzBuzz (
        '-1',
        ()
    );
};

subtest 'FizzBuzz("str")' => sub {
    func_test_FizzBuzz (
        'str',
        ()
    );
};

done_testing;
