require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

viewer1 = Viewer.new("justin")
viewer2 = Viewer.new("justin2222")

movie1 = Movie.new("title")
movie2 = Movie.new("other")

queueItem = QueueItem.new(movie1, viewer1)
queueItem2 = QueueItem.new(movie2, viewer1)

viewer1.queue_movies
viewer1.rate_movie(movie2, 3)
viewer1.queue_movies

viewer1.rate_movie(movie2, 4)
viewer2.rate_movie(movie2, 3)

avg = movie2.average_rating
best = movie2.highest_rated
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
