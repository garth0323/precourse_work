puts 'Ask Deaf Grandma Anything'
 
while true	   
      question = gets.chomp
      if question != question.upcase
        puts 'HUH?! SPEAK UP, SONNY!'
       else question == question.upcase
	      puts 'NO, NOT SINCE ' + Random.new.rand(1900..1950).to_s
       end
break if question == 'bye'
end










		  
	