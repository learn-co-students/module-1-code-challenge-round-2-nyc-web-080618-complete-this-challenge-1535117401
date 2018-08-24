require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


movie1 = Movie.new("bridesmaids")
movie2 = Movie.new("transformers")
movie3 = Movie.new("up")

viewer1 = Viewer.new("user1")
viewer2 = Viewer.new("user2")
viewer3 = Viewer.new("user3")

que1 = QueueItem.new(viewer1, movie1, 5)
que2 = QueueItem.new(viewer2, movie2, 4)
que3 = QueueItem.new(viewer3, movie3, 2)





# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
