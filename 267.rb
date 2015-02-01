#!/usr/bin/env ruby

def toss
  ["H","T"][rand(2)]
end

def bet(f)
  cash = 1.000000000000
  1000.times do
    bet = f * cash
    result = toss
    if result == "H"
      cash += (2*bet)
    else
      cash -= bet
    end
  end
  cash
end

def analyse
  scores = Hash.new
  ("0.01".."0.99").to_a.each do |f|
    result = bet(f.to_f)
    if result > 1000000000
      scores[f] = result
    end
  end
  scores.inspect
  scores.sort_by{|k,v| v}.reverse
  scores.keys[0]
end

def process
  results = Array.new
  100.times do
    results << analyse
  end
  counts = Hash.new(0)
  results.each {|result| counts[result] += 1}
  counts
end
