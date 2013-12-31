def hello(variable)
  if variable >= 10    
    variable = variable + 1    
    variable.times do
      puts "Hello"
    end
    
  else  
    variable = variable -1 
    variable.times do
      puts "Hello"
    end
  end
end

hello(12)