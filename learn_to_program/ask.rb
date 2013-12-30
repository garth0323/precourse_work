def ask question
  puts question
  reply = gets.chomp.downcase
  if reply == "yes"
    true
  elsif reply == "no"
    false
  else
    "Please answer \"yes\" or \"no\""
  end
end

puts "Hello and thank you for taking this quiz"
puts
ask "Do you like eating tacos?"
wets_bed = ask "Do you wet the bed?"
ask "Do you like eating fajitas?"
puts
puts wets_bed