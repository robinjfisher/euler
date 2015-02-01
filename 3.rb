#!/usr/bin/env ruby

def is_prime(n)
  if n <= 3
    return true
  elsif n % 2 == 0
    return false
  end
  sqrt = Math.sqrt(n).ceil
  2.upto(sqrt).each do |num|
    if n % num == 0
      return false
    else
      return true
    end
  end
end

def largest_prime_factor(n)
  prime_factors = Array.new
  limit = Math.sqrt(n).ceil
  1.upto(limit).each do |num|
    if is_prime(num)
      
end
