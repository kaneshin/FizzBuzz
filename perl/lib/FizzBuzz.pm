#===========================================================================
# File: FizzBuzz.pm
# Last Change: 13-Mar-2012.
# Maintainer: Shintaro Kaneko <kaneshin0120@gmail.com>
# Description:
# ToDo:
#   Make function of checking validation of argument.
#===========================================================================

package FizzBuzz;
use strict;
use warnings;
use utf8;
our $VERSION = '0.01';

sub getFizzBuzz {
    my $num = shift;
    my @fb_arr = ();
    for ( my $i = 1; $i <= $num; $i++ ) {
        if ( $i % 15 == 0 ) {
            $fb_arr[$i-1] = 'FizzBuzz';
        }
        elsif ( $i % 3 == 0 ) {
            $fb_arr[$i-1] = 'Fizz';
        }
        elsif ( $i % 5 == 0 ) {
            $fb_arr[$i-1] = 'Buzz';
        }
        else {
            $fb_arr[$i-1] = $i;
        }
    }
    return @fb_arr;
}

# sub _valid_num {
#     my $arg = shift;
#     return ( $arg =~ /^\d+$/ ? $arg : -1 );
# }

1;
__END__

=head1 NAME

FizzBuzz -

=head1 SYNOPSIS

  use FizzBuzz;

=head1 DESCRIPTION

FizzBuzz is here.

=head1 AUTHOR

Shintaro Kaneko E<lt>kaneshin0120@gmail.comE<gt>

=head1 SEE ALSO

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
