#===========================================================================
# File: RunFizzBuzz.rb
# Last Change: 12-Mar-2012.
# Maintainer: Shintaro Kaneko <kaneshin0120@gmail.com>
# Description:
#===========================================================================

require "./FizzBuzz"

puts(FizzBuzz.new(ARGV[0].to_i(10)).getFizzBuzz())
