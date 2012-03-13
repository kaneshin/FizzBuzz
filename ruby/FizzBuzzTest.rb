#===========================================================================
# File: FizzBuzzTest.rb
# Last Change: 12-Mar-2012.
# Maintainer: Shintaro Kaneko <kaneshin0120@gmail.com>
# Description:
#===========================================================================

require 'test/unit'
require "./FizzBuzz"

class FizzBuzzTest < Test::Unit::TestCase
    # function for testFizzBuzz_N
    def func_testFizzBuzz(input, expect)
        # Is the input equal to the expect.length?
        assert_equal(input, expect.length)
        # Generated instance of FizzBuzz
        fizzbuzz = FizzBuzz.new(input)
        result = fizzbuzz.getFizzBuzz()
        0.upto(input - 1) {|num|
            assert_equal(expect[num], result[num])
        }
    end

    def testFizzBuzz_1()
        input = 10
        expect = [
            1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8 , "Fizz", "Buzz"
        ]
        func_testFizzBuzz(input, expect)
    end

    def testFizzBuzz_2()
        input = 20
        expect = [
            1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8 , "Fizz", "Buzz",
            11, "Fizz", 13, 14, "FizzBuzz", 16, 17, "Fizz", 19, "Buzz"
        ]
        func_testFizzBuzz(input, expect)
    end

    def testFizzBuzz_3()
        input = 20
        expect = [
            1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8 , "Fizz", "Buzz",
            11, "Fizz", 13, 14, "FizzBuzz", 16, 17, "Fizz", 19, "Buzz"
        ]
        func_testFizzBuzz(input, expect)
    end
end

