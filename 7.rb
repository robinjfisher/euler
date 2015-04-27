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
count = Array.new
while stop == false
  if is_prime?(i)
    count << i
    puts i
    if count.length == 10001
      stop = true
      puts i
    end
    i += 1
  else
    i += 1
  end
end