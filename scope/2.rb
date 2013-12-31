#the longest way to multiply an array by three
arr = [1,2,3]

arr.each do |x|
  num = 3
  num = x * num
  puts num
end

#puts num
#the above line will not work because it is out of the sscope of the block of code.