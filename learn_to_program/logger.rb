def log description, &block
  puts "Starting #{description}..."
  block.call
  puts "#{description} is done."
end

log 'outside' do
  puts "Starting inside block"
  puts '5'
  
  log 'inside' do
    puts "I like Thai Food!"
  end 
end

