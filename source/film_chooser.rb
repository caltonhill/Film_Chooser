# need to make work with xlsx file
require 'csv'

current_film_list = "C:\\Users\\James\\Google Drive\\films.csv"

puts "----------------------------"
puts "Hooray! The weekend is here."
puts "A chance to watch a film."
puts "----------------------------"

# get each line/film from the file and put it into an array
films_array = []
CSV.foreach(current_film_list) do |row1|
	films_array << row1
end

# display the number of films (array size)
puts
puts "The number of films waiting to be watched is #{films_array.size}."
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
 

  

		
