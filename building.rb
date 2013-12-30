puts "write something on each line"

input = gets.chomp
words = []

while true
  break if input.empty?
  words << input
  input = gets.chomp
end

puts words.sort