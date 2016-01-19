# specify input file
# need to make work with full path
# need to make work with xlsx file

input_file = "films_test.txt"
current_film_list = File.read(input_file)

=begin  A check that is now not needed:
film_count = current_film_list.split("\n").size
=end
puts "----------------------------"
puts "Hooray! The weekend is here."
puts "A chance to watch a film."
puts "----------------------------"

# get each line/film from the file and put it into an array
films_array = []
current_film_list.split("\n").each do |film|
	films_array << film
end

=begin
Here could ask user if they want to see a list of all films (y/n)
puts films_array.join(",")
=end

# display the number of films (array size)
puts
puts "The number of films waiting to be watched is #{films_array.size}."
puts 
while true
  puts "Tonight's randomly chosen film is #{films_array.sample}"
  puts "Do you want to try for a different one?(y/n)"
  another_film = gets.chomp
    if another_film == "n"
	    break
	  end
end

puts "Ok. Happy viewing."
 

  

		
