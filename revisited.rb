toc = ["Table of Contents", "Chapter 1: Getting Started", "page 1", "Chapter 2: Numbers", "page 9", "Chapter 3: Letters","page 13"]

line_width = 30
puts toc[0].center(line_width)
puts " "
puts toc[1].ljust(line_width) + toc[2].rjust(line_width)
puts toc[3].ljust(line_width) + toc[4].rjust(line_width)
puts toc[5].ljust(line_width) + toc[6].rjust(line_width)