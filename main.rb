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

# # function to check if passed string is isogram, that is a word that
# # has no repeating letter
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

# # function to show the difference between puts and p
# puts "Using puts:"
# puts []
# p "Using p:"
# p []

# function to show how pry-bybug works
# def yell_greeting(string)
#   name = string

#   name = name.upcase
#   greeting = "WASSAP, #{name}!"
#   puts greeting
# end

# yell_greeting("bob")

# # show how to create nested array that are immutable
# immutable = Array.new(3) { Array.new(2) }
# immutable[0][0] = 1000
# print immutable

# # show how to iterate over multidimensional hashes
# contacts = {
#   "Jon Snow" => {
#     name: "Jon",
#     email: "jon_snow@thewall.we",
#     favorite_ice_cream_flavors: ["chocolate", "vanilla", "mint chip"],
#     knows: nil
#   },
#   "Freddy Mercury" => {
#     name: "Freddy",
#     email: "freddy@mercury.com",
#     favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
#   }
# }

# contacts.each do |person, data|
#   #at this level, "person" is Jon Snow or Freddy and "data" is a hash of
#   #key/value pairs to iterate over the "data" hash, we can use the following
#   #line:

#   data.each do |attribute, value|
#     #at this level, "attribute" describes the key of :name, :email,
#     #:favorite_ice_cream_flavors, or :knows we need to first check and see if
#     #the key is :favorite_ice_cream_flavors, if it is, that means the VALUE is
#     #an array that we can iterate over to print out each element

#     if attribute == :favorite_ice_cream_flavors
#       value.each do |flavor|
#         # here, each index element in an ice cream flavor string
#         puts "#{flavor}"
#       end
#     end
#   end
# end

# #how to create an object and module example
# module Study
# end

# class FirstClass
#   include Study
# end

# my_object = FirstClass.new

#more examples of classes and objects
# class GoodDog
#   def initialize
#     puts "the object was initialized"
#   end
# end

# sparky = GoodDog.new

# class GoodDog
#   def initialize(name)
#     @name = name
#   end
# end

# sparky = GoodDog.new("Sparky")

#composition example
# class Engine
#   def start
#     puts "engine starting"
#   end
# end

# class Car
#   def initialize
#     @engine = Engine.new #engine instance is created when car is created
#   end
  
#   def start
#     @engine.start
#   end
# end

# my_car = Car.new
# my_car.start

# #aggregation example
# class Passenger
# end

# class Car
#   def initialize(passengers)
#     @passengers = passengers #passengers are given to car at creation
#   end
# end

# #passengers can exist without a car
# passengers = [Passenger.new, Passenger.new]
# my_car = Car.new(passengers)

# #instance methods
# class GoodDog
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end

#   # def name    #change from get_name
#   #   @name
#   # end

#   # def name=(name)   #changed from set_name
#   #   @name = name
#   # end
#   # above code change to the bellow code:
#   # attr_accessor :name

#   def speak
#     "#{name} says arf!"
#   end
# end

# sparky = GoodDog.new("Sparky")
# puts sparky.speak
# fido = GoodDog.new("Fido")
# puts fido.speak
# puts sparky.name
# sparky.name = "Onyx"
# puts sparky.name
# puts sparky.speak

# class GoodDog
#   attr_accessor :name, :height, :weight   # make 3 setter/getter methods

#   def initialize(n, h, w)   # initialize also needs to change with new @
#     @name = n
#     @height = h
#     @weight = w
#   end

#   def speak
#     "#{name} says arf!"
#   end

#   def change_info(n, h, w)    # new method to change info if needed
#     self.name = n
#     self.height = h
#     self.weight = w
#   end

#   def info    # method to print out what the current informaiton is
#     "#{self.name} weighs #{self.weight} and is #{self.height} tall."
#   end
# end

# sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")
# puts sparky.info

# sparky.change_info("Onyx", "10 inches", "9 lbs")
# puts sparky.info

class MyCar
  attr_reader :year, :color, :model
  attr_accessor :speed

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @speed = 0
  end

  def speed_up(number)
    self.speed += number
  end

  def brake(number)
    self.speed -= number
  end

  def current_speed
    self.speed
  end

  def shut_down
    self.speed = 0
  end

  def info
    "year: #{self.year} color: #{self.color} model: #{self.model}"
  end

end

bavaria = MyCar.new("1973", "blue", "m3")
puts bavaria.info

bavaria.speed_up(90)
puts "current speed: #{bavaria.current_speed}"
bavaria.speed_up(30)
puts "current speed: #{bavaria.current_speed}"
bavaria.brake(60)
puts "current speed: #{bavaria.current_speed}"
bavaria.brake(30)
puts "current speed: #{bavaria.current_speed}"
bavaria.shut_down
puts "current speed: #{bavaria.current_speed}"