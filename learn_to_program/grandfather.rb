def hour block_description, &block
  hour = Time.new.hour
  
  case
  when hour >= 13
    hour = hour - 12
  when hour == 0
    hour = 12
  end
      
  hour.times do
    block.call
  end
end

hour 'Dong' do
  puts 'Dong!'
end



