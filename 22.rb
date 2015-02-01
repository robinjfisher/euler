!#/usr/bin/env ruby

file = File.open("names.txt","r")
string = file.read
SORTED_NAMES = string.split(",").sort

SCORES = Hash.new
count = 1
("A".."Z").to_a.each do |letter|
  SCORES[letter] = count
  count += 1
end

def score(name,index)
  clean_name = name.gsub(/\W/,"")
  score = 0
  clean_name.split(//).each do |letter|
    score += SCORES[letter.to_s]
  end
  score * (index + 1)
end

def process
  score = 0
  SORTED_NAMES.each_with_index do |name,index|
    name_score = score(name,index)
    puts "Processing #{name} with score: #{name_score}"    
    score += name_score
  end
  score
end
