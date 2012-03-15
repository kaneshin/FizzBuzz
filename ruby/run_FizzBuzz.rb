#===========================================================================
# File: RunFizzBuzz.rb
# Last Change: 12-Mar-2012.
# Maintainer: Shintaro Kaneko <kaneshin0120@gmail.com>
# Description:
#===========================================================================

require File.dirname(__FILE__) + '/FizzBuzz/'

puts(FizzBuzz.new(ARGV[0].to_i(10)).get_FizzBuzz())
