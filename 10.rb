#!/usr/bin/env ruby

def is_prime?(n)
  return n > 1 if n <=3
  return false if n % 2 == 0 || n % 3 == 0

  i = 5
  while i*i <= n 
      return false if (n % i == 0 || n % (i + 2) == 0)
      i += 6
  end

  true	
end

stop = false
i = 1
results = Array.new
while stop == false
  if is_prime?(i) && i < 2000000
    results << i
    i += 1
  elsif i >= 2000000
    stop = true
  else
    i += 1
  end
end

puts results.inject(:+)