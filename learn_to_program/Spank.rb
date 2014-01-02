
def age_in_years (born, now)
  seconds = now - born
  years = (seconds / 31536000)
  years.to_i
end

puts "What day were you born on?"
day = gets.chomp

puts "What month?"

month = gets.chomp

puts "What Year?"
year = gets.chomp

birthday = Time.local(year, month, day)
current = Time.new

age = age_in_years(birthday,current)

puts "You are #{age} old!"

age.times { |x| puts "SPANK!"}