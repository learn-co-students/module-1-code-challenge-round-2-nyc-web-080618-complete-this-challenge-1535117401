require_relative '../config/environment.rb'
require_relative '../app/models/movie'
require_relative '../app/models/viewer'
require_relative '../app/models/queue_item'



def reload
  load 'config/environment.rb'
end

viewer1 = Viewer.new("Jobnny")
viewer2 = Viewer.new("Lisa")
viewer3 = Viewer.new("David")

movie1 = Movie.new("Lord Of the Rings")
movie2 = Movie.new("Jaws")
movie3 = Movie.new("Black Panther")

qt1 = QueueItem.new(viewer1, movie1, 8)
qt2 = QueueItem.new(viewer2, movie2, 5)
qt3 = QueueItem.new(viewer3, movie3, 6)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
