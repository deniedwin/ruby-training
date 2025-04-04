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

# class MyCar
#   attr_reader :year, :model
#   attr_accessor :speed, :color

#   def initialize(y, c, m)
#     @year = y
#     @color = c
#     @model = m
#     @speed = 0
#   end

#   def speed_up(number)
#     self.speed += number
#   end

#   def brake(number)
#     self.speed -= number
#   end

#   def current_speed
#     self.speed
#   end

#   def shut_down
#     self.speed = 0
#   end

#   def info
#     "year: #{self.year} color: #{self.color} model: #{self.model}"
#   end

#   def spray_paint(color)
#     self.color = color
#   end

#   def self.gas_mileage(gallons, miles)
#     puts "car has #{miles/gallons} miles/gallons"
#   end

#   def to_s
#     "color: #{self.color}, year: #{self.year}, model: #{self.model}"
#   end

# end

# bavaria = MyCar.new("1973", "blue", "m3")
# puts bavaria.info

# bavaria.speed_up(90)
# puts "current speed: #{bavaria.current_speed}"
# bavaria.speed_up(30)
# puts "current speed: #{bavaria.current_speed}"
# bavaria.brake(60)
# puts "current speed: #{bavaria.current_speed}"
# bavaria.brake(30)
# puts "current speed: #{bavaria.current_speed}"
# bavaria.shut_down
# puts "current speed: #{bavaria.current_speed}"

# puts bavaria.color
# bavaria.spray_paint("black")
# puts bavaria.color
# MyCar.gas_mileage(13,351)

# puts bavaria

# #code to explore what self. does
# class GoodDog
#   attr_accessor :name, :height, :weight

#   def initialize(n, h, w)
#     self.name   = n
#     self.height = h
#     self.weight = w
#   end

#   def change_info(n, h, w)
#     self.name   = n
#     self.height = h
#     self.weight = w
#   end

#   def info
#     "#{self.name} weighs #{self.weight} and is #{self.height} tall."
#   end

#   def what_is_self
#     self
#   end

#   puts self
# end

# sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")
# # p sparky.what_is_self

# #class inheritance examples
# class Animal
#   def speak
#     "Hello!"
#   end
# end

# class GoodDog < Animal
# end

# class Cat < Animal
# end

# sparky = GoodDog.new
# paws = Cat.new
# puts sparky.speak
# puts paws.speak

# #private methods
# class GoodDog
#   DOG_YEARS = 7

#   attr_accessor :name, :age

#   def initialize(n, a)
#     self.name = n
#     self.age = a
#   end

#   def public_disclosure
#     "#{self.name} in human years is #{human_years}"
#   end

#   private

#   def human_years
#     age * DOG_YEARS
#   end

# end

# sparky = GoodDog.new("Sparky", 4)
# puts sparky.public_disclosure

#inheritance exercises

# class Vehicle
#   attr_accessor :color
#   attr_reader :year, :model

#   @@number_of_vehicles = 0

#   def self.gas_mileage(gal, mile)
#     puts "#{mile/gal} miles per gallon of gas"
#   end

#   def initialize(year, model, color)
#     @year = year
#     @model = model
#     @color = color
#     @current_speed = 0
#     @@number_of_vehicles += 1
#   end

#   def self.number_of_vehicles
#     @@number_of_vehicles
#   end

#   def speed_up(number)
#     @current_speed += number
#     puts "you speed up with #{number} mph"
#   end

#   def brake(number)
#     @current_speed -= number
#     puts "you brake speed with #{number} mph"
#   end

#   def current_speed
#     puts "current speed is #{@current_speed} mph"
#   end

#   def shut_down
#     @current_speed = 0
#     puts "engine off"
#   end

#   def spray_paint(color)
#     self.color = color
#     puts "your new color is: #{color}"
#   end

#   def age
#     "the vehicle age: #{calculate_age}"
#   end

#   private

#   def calculate_age
#     Time.now.year - self.year.to_i
#   end
# end

# module Towable
#   def can_tow?(weight)
#     weight < 1000
#   end
# end

# class MyCar < Vehicle
#   BRAND = "toyota"
#   def to_s
#     "the car has; color: #{color}, year: #{year}, model: #{model}"
#   end
# end

# class MyTruck < Vehicle
#   BRAND = "honda"
#   include Towable
#   def to_s
#     "the truck has; color: #{color}, year: #{year}, model: #{model}"
#   end 
# end

# my_car = MyCar.new("2005", "corola", "yellow")
# my_truck = MyTruck.new("1950", "civic", "grey")

# my_car.speed_up(60)
# my_car.current_speed

# my_truck.spray_paint("silver")
# puts my_truck.to_s

# puts my_truck.age

# class Student
#   def initialize(name, grade)
#     @name = name
#     @grade = grade
#   end

#   def better_grade_than?(other_stu)
#     grade > other_stu.grade
#   end

#   protected
#   attr_accessor :grade
# end

# joe = Student.new("joe", 93)
# bob = Student.new("bob", 80)

# puts joe.better_grade_than?(bob)
# puts joe.grade

# class Cinema
#   attr_accessor :name, :location

#   def initialize(name, location)
#     @name = name
#     @location = location
#     @movies = []
#   end

#   def add_movie(movie)
#     @movies << movie
#     movie.cinema = self
#   end
# end

# class Movie
#   attr_accessor :title, :showtime, :cinema
#   @@all = []

#   def initialize(title, showtime)
#     @title = title
#     @showtime = showtime
#     @@all << self
#   end
# end

# cobble_hill = Cinema.new("cobble", "fd rooseveltweg")
# spider_man = Movie.new("spider man", "9:00")
# cobble_hill.add_movie(spider_man)

# #code to check flow of error handling
# for i in 'A'..'C'
#   retries = 2
#   begin
#     puts "Executing command #{i}"
#     raise "Exception: #{i}"
#   rescue Exception=>e
#     puts "\tCaught: #{e}"
#     if retries > 0
#       puts "\tTrying #{retries} more times\n"
#       retries -= 1
#       sleep 2
#       puts "---"
#       retry
#     end  
#   end
# end

# #code to load wikipedia pages and what to do when an error occurs
# require 'open-uri'
# remote_base_url = "http://en.wikipedia.org/wiki"

# [1900, 1910, 'xj3490', 2000].each do |yr|
 
#  retries = 3
 
#  begin
#    url = "#{remote_base_url}/#{yr}"
#    puts "Getting page #{url}"
#    rpage = URI.open(url) # <-- FIXED
#  rescue StandardError=>e
#    puts "\tError: #{e}"
#    if retries > 0
#        puts "\tTrying #{retries} more times"
#        retries -= 1
#        sleep 1
#        retry
#    else
#        puts "\t\tCan't get #{yr}, so moving on"
#    end    
#  else
#    puts "\tGot page for #{yr}"
#  ensure   
#    puts "Ensure branch; sleeping"
#    sleep 1

#  end
# end

#training of classes, modules and methods

class BaseballPlayer
  def initialize(hits, walks, at_bats)
    @hits = hits
    @walks = walks
    @at_bats = at_bats
  end

  def batting_average
    (@hits.to_f/@at_bats)
  end

  def on_base_percentage
    ((@hits + @walks).to_f/@at_bats)
  end
end

david = BaseballPlayer.new(10,5,2)
puts david.batting_average
puts david.on_base_percentage

class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def full_name
    "full name: #{@first_name} #{@last_name}"
  end
end

santi = Person.new("santiago", "de compostela")
puts santi.first_name
puts santi.last_name
puts santi.full_name

module MathHelper
  def exponent(a,b)
    a**b
  end
end

class Calculator
  include MathHelper
  def square_root(c)
    exponent(c,0.5)
  end
end

homework = Calculator.new()
puts homework.square_root(9)
