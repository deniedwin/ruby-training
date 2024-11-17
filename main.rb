# # hash to store movie names as key and release dates as value
# movies = {
#   :back_to_the_future => 1985,
#   :the_princess_bride => 1987,
#   :inception => 2010,
#   :the_matrix => 1999
# }
# # array to store the movie years of the above hash
# movie_years = [movies[:back_to_the_future], movies[:the_princess_bride], movies[:inception], movies[:the_matrix]]
# puts movie_years
# puts "\n"

# # function to calcualte the facatorial reuslt of any number 7! = 5040
# my_var = 7
# result = 1
# for i in 1..my_var do
#   result = i*result
# end
# puts result
# puts "\n"

# # function to take user name and outputs greeting message
# name = gets.chomp
# puts "hi " + name + " fin"

# # function to ask for user name and return what his age will be in x-years
# age = gets.chomp.to_i
# added_years = 10
# puts age + added_years

# # function to output user name 10 times
# user = gets.chomp
# 10.times do
#   puts user
# end

# # function to ask for user name and user lastname and then print full name
# first_name = gets.chomp
# last_name = gets.chomp
# puts first_name << " " << last_name

# optional_parameters.rb

# function to check if the passed hash is empty and outputs a default value
def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" +
         " years old and I live in #{options[:city]}."
  end
end
# greeting("Bob")
greeting("Bob", {age: 62, city: "New York City"})
greeting("Bob", age: 62, city: "New York City")