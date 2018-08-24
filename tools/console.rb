require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Instances of Movie Class (title)
movie1 = Movie.new("Dark Knight")
movie2 = Movie.new("Thor Ragnarok")
movie3 = Movie.new("Inception")
movie4 = Movie.new("Dark Knight Rises")


# Instances of Viewer Class (username)
viewer1 = Viewer.new("Parker")
viewer2 = Viewer.new("Griffin")
viewer3 = Viewer.new("Brennan")
viewer4 = Viewer.new("Tucker")



# Instances of QueueItem Class (viewer_ob, movie_ob, rating)
queue1 = QueueItem.new(viewer1, movie1, 5)
queue2 = QueueItem.new(viewer2, movie1, 3)
queue3 = QueueItem.new(viewer3, movie2, 5)
queue4 = QueueItem.new(viewer1, movie3, 4)
queue5 = QueueItem.new(viewer4, movie4, 1)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
