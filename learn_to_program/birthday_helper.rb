
birthdays = {}

File.open("birthdays.txt") do |fp|
  fp.each do |line|
    key, value, val = line.chomp.split(/, */)
    birthdays[key.to_s] = [value, val.to_i]
  end
end

puts "Who's Bday are you after?"
person = gets.chomp

if birthdays.has_key?(person)
  puts "#{birthdays[person][0]}, #{birthdays[person][1]} is #{person}'s birthday."
else
  puts "Sorry , I do not have #{person}'s birthday in my records."
end



