#===========================================================================
# File: FizzBuzz.rb
# Last Change: 12-Mar-2012.
# Maintainer: Shintaro Kaneko <kaneshin0120@gmail.com>
# Description:
#===========================================================================

class FizzBuzz
    FIZZ = "Fizz"
    BUZZ = "Buzz"
    FIZZBUZZ = {FIZZ => 3, BUZZ => 5}

    def initialize(term)
        @fb_arr = Array.new(term)
        doFizzBuzz()
    end

    private
    def doFizzBuzz()
        1.upto(@fb_arr.length) {|num|
            res = ""
            res += FIZZ if num % FIZZBUZZ[FIZZ] == 0
            res += BUZZ if num % FIZZBUZZ[BUZZ] == 0
            @fb_arr[num - 1] = res == "" ? num : res
        }
    end

    public
    def getFizzBuzz()
        return @fb_arr
    end
end
