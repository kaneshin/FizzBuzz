#===========================================================================
# File: FizzBuzzTest.rb
# Last Change: 12-Mar-2012.
# Maintainer: Shintaro Kaneko <kaneshin0120@gmail.com>
# Description:
#===========================================================================

require 'test/unit'
require File.dirname(__FILE__) + '/FizzBuzz/'

module FuncTestFizzBuzz
    def func_test_FizzBuzz(input, expect)
        assert_equal(input, expect.length)
        fizzbuzz = FizzBuzz.new(input)
        result = fizzbuzz.get_FizzBuzz()
        0.upto(input - 1) {|num|
            assert_equal(expect[num], result[num])
        }
    end
end

class FizzBuzzTest < Test::Unit::TestCase
    include FuncTestFizzBuzz

    def test_FizzBuzz_1()
        input = 10
        expect = [
            1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8 , "Fizz", "Buzz"
        ]
        func_test_FizzBuzz(input, expect)
    end

    def test_FizzBuzz_2()
        input = 20
        expect = [
            1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8 , "Fizz", "Buzz",
            11, "Fizz", 13, 14, "FizzBuzz", 16, 17, "Fizz", 19, "Buzz"
        ]
        func_test_FizzBuzz(input, expect)
    end
end

