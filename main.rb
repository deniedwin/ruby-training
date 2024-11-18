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

# # function to check if the passed hash is empty and outputs a default value
# def greeting(name, options = {})
#   if options.empty?
#     puts "Hi, my name is #{name}"
#   else
#     puts "Hi, my name is #{name} and I'm #{options[:age]}" +
#          " years old and I live in #{options[:city]}."
#   end
# end
# # greeting("Bob")
# greeting("Bob", {age: 62, city: "New York City"})
# greeting("Bob", age: 62, city: "New York City")

# # function to select only siblings names
# family = {  
#     uncles: ["bob", "joe", "steve"],
#     sisters: ["jane", "jill", "beth"],
#     brothers: ["frank","rob","david"],
#     aunts: ["mary","sally","susan"]
# }
# sis_bro = family.select do |k,v|
#   k === :sisters || k == :brothers
# end
# puts sis_bro

# # function that pints all the keys, all the values and both
# person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
# puts person.keys
# puts "---"
# puts person.values
# puts "---"
# person.each do |k,v|
#   puts "key: #{k} value: #{v}"
# end

# #function to chain different methods
# phrase = ["be", "to", "not", "or", "be", "to"]
# puts phrase.reverse.join(" ").capitalize

# function to check the return key of ruby
# a = [1, 2, 3]

# def mutate(array)
#   array.pop
# end

# p "Before mutate method: #{a}"
# p mutate(a)
# p "After mutate method: #{a}"

# def add_three(number)
#   number + 3
# end

# returned_value = add_three(4)
# puts returned_value

# # function to call a created method
# def greeting(name)
#   name
# end
# puts greeting("franky")

# # funciton to multiply two numbers
# def multiply(a,b)
#   a*b
# end
# puts multiply(7,3)

# function to check if passed string is isogram, that is a word that
# has no repeating letter
# def isogram?(string)
#   original_length = string.length
#   string_array = string.downcase.split("")
#   p string_array
#   unique_length = string_array.uniq.length
#   p unique_length
#   original_length == unique_length
# end
# puts isogram?("Odin")
# #=> false

puts "Using puts:"
puts []
p "Using p:"
p []
