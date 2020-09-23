require_relative 'Movie'

movie1 = Movie.new("Source code", 8)
movie2 = Movie.new("Inception", 9)

puts movie1.get_movie_info()
puts movie2.get_movie_info()

movie1.watch()
movie1.watch()
movie1.watch()
movie2.watch()

movie2.update_rating(10)

puts movie1.get_movie_info()
puts movie2.get_movie_info()

# puts movie1.name  # getter is needed
