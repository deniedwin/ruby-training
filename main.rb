# hash to store movie names as key and release dates as value
movies = {
  :back_to_the_future => 1985,
  :the_princess_bride => 1987,
  :inception => 2010,
  :the_matrix => 1999
}
# array to store the movie years of the above hash
movie_years = [movies[:back_to_the_future], movies[:the_princess_bride], movies[:inception], movies[:the_matrix]]
# puts movie_years

# function to calcualte the facatorial reuslt of any number 7! = 5040
my_var = 7
result = 1
for i in 1..my_var do
  result = i*result
end
puts result