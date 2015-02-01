#!/usr/bin/env ruby

def foobar
  sum = 0
  1.upto(999).each do |num|
    (num % 3 == 0 || num % 5 == 0) ? sum += num : sum
  end
  sum
end
