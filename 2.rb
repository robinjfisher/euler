#!/usr/bin/env ruby

def fib(num1,num2)
  fib = [num1,num2]
  array = [num1,num2]
  sum = array.inject(:+)
  while sum < 4000000
    fib.push(sum)
    array[0] = array[1]
    array[1] = sum
    puts sum
    sum = array.inject(:+)
  end
  fib.select!{|x| x % 2 == 0}
  fib.inject(:+)
end
