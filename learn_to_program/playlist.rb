Dir.chdir ['C:\Users\Public\Music']

#puts the songs in an array
songs = Dir['C:\Users\Public\Music\Sample_Music']
playlist = []

songs.shuffle

#pushing first 100 songs into playlist arrays
playlist << songs[0..99]

#create a new file
file.new shuffledlist.mpu

File.open("shuffledlist.mpu", "w") do |f|
  f.puts(playlist)
end






  
  



