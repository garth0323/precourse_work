
#returns random unused card and takes it out of deck.
def dealCard
  deck = [1,2,3,4,5,6,7,8,9,10,10,10,10,11,1,2,3,4,5,6,7,8,9,10,10,10,10,111,2,3,4,5,6,7,8,9,10,10,10,10,111,2,3,4,5,6,7,8,9,10,10,10,10,11]
  #finds random card in deck
  which = Random.new.rand(0..52)
  #checks to make sure card is still in deck
  while deck[which] == nil do
    which = puts Random.new.rand(0..52)
    deck[which]
  end
  #returns random unused card from deck 
  card = deck[which] 
  deck[which] = nil
  return card
end
  
def countCards(arr)
  count = 0
  #add up cards value
  arr.each { |x| count = count + x }
  count
end
    

#arrays of cards that players are holding
playercards = []
dealercards = []
  
puts "Welcome to the table, what is your name?"
player = gets.chomp

puts "Here are your first two cards, #{player}."

2.times do |x| 
  playercards << dealCard 
end
playercards.each { |x| puts x }

puts 'Here is the dealer facecard.'
2.times do |x| 
  dealercards << dealCard 
end
puts dealercards[1]
  
while true do
  puts "Would you like to hit or stay #{player}"
  play = gets.chomp
  play = play.downcase
  if play == "hit"
    playercards << dealCard
    playercards.each { |x| puts x }
    playernum = countCards(playercards)
    puts playernum
    puts "Player Busts" if playernum > 21
               
   if play == "stay"
      puts "Stay, you have ..."
      playernum = countCards(playercards)
      puts playernum
      puts "Player Busts" if playernum > 21
      dealerRun

  else
    puts "only hit or stay is allowed."
  end
end
  
  #dealer runs cards
def dealerRun
  puts "dealer has..."
  dealernum = countCards(dealercards)
  puts = dealernum
  while dealernum < 17 do
    puts "dealer must hit"
    dealercards << dealCard
    dealernum = countCards(dealercards)
    puts dealernum
  end
    
  case
  when dealernum > 21
    puts "Dealer Busts"
  when dealernum > playernum && dealernum < 22
    puts "Dealer wins!"
  end
end
  
 