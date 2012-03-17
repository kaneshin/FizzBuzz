#===========================================================================
# File: FizzBuzz.pm
# Last Change: 17-Mar-2012.
# Maintainer: Shintaro Kaneko <kaneshin0120@gmail.com>
#===========================================================================

package FizzBuzz;
use strict;
use warnings;
use utf8;
use Readonly;
our $VERSION = '0.9.0';

Readonly my $FIZZ => 'Fizz';
Readonly my $BUZZ => 'Buzz';
Readonly my %FIZZBUZZ => ($FIZZ => 3, $BUZZ => 5);

my @fizzbuzz_array;
my $termination;

sub get_FizzBuzz {
    @fizzbuzz_array = ();
    _do_FizzBuzz() if ($termination = _check_termination($_[0])) > 0;
    return @fizzbuzz_array;
}

sub _check_termination {
    return $_[0] =~ /^\d+$/ ? $_[0] : 0;
}

sub _do_FizzBuzz {
    my $ret;
    for (my $i = 1; $i <= $termination; $i++) {
        if (($i % $FIZZBUZZ{$FIZZ} == 0) or ($i % $FIZZBUZZ{$BUZZ} == 0)) {
            $ret = '';
            $ret = $FIZZ if $i % $FIZZBUZZ{$FIZZ} == 0;
            $ret .= $BUZZ if $i % $FIZZBUZZ{$BUZZ} == 0;
        }
        else {
            $ret = $i;
        }
        push @fizzbuzz_array, $ret;
    }
}

1;
__END__
