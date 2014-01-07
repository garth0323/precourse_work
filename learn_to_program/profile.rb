def profile block_description, &block
  go = 'no' #change to no to turn off proc
  if go == 'yes' 
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} in seconds"
  end
end

profile '25000 doublings' do
  number = 1
  25000.times do
    number = number + number
  end
end

profile 'count to a million' do
  number = 0
  1000000.times do
    number = number + 1
  end
end