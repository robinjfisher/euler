#!/usr/bin/env ruby

def fib(num1,num2)
  array = [num1.to_i,num2.to_i]
  sum = array.inject(:+)
  count = 3
  while sum.to_s.length <= 1000
    count += 1
    array[0] = array[1]
    array[1] = sum
    sum = array.inject(:+)
    puts sum
    if sum.to_s.length == 1000
      puts count
      return false
    end
  end
end
