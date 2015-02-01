#!/usr/bin/env ruby

def fib(num1,num2)
  array = [num1.to_i,num2.to_i]
  sum = array.inject(:+)
  while sum.to_s.length <= 1000
    puts sum
    array[0] = array[1]
    array[1] = sum
    sum = array.inject(:+)
  end
end
