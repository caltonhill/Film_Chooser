require 'spreadsheet'

puts "----------------------------"
puts "Hooray! The weekend is here."
puts "A chance to watch a film."
puts "----------------------------"

# Use Spreadsheet to load file
current_film_list = Spreadsheet.open (open('C:\Users\James\Google Drive\films.xls'))

#Target first column of first worksheet.

sheet1 = current_film_list.worksheet 0
column = sheet1.column(0)

#Iterate over cells in column. If cell is populated add contents to array
films_array = []

column.each do |row|
  unless row.nil?
  films_array << row
    end
end

# display the number of films (array size)
puts
puts "The number of films waiting to be watched is #{films_array.size}"
puts

# Here could ask user if they want to see a list of all films (y/n)
puts "Do you want to see a list of all the films? (y/n)"
list_all = gets.chomp
  if list_all == 'y'
    puts films_array.join("\n")
  else

  end

puts
puts "----------------------------"

while true
  puts "Tonight's randomly chosen film is #{films_array.sample}"
  puts "Do you want to try for a different one? (y/n)"
  another_film = gets.chomp
    if another_film == "n"
	    break
	  end
end

puts "Ok. Happy viewing."
 

  

		
