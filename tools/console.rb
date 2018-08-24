require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

viewer1 = Viewer.new("marissa", 5)
viewer2 = Viewer.new("Buffy", 2)
viewer3 = Viewer.new("Jose", 3)
viewer4 = Viewer.new("Laura", 5)

movie1 = Movie.new("Lion King")
movie2 = Movie.new("Little Mermaid")
movie3 = Movie.new("The Notebook")

queue_item1 = QueueItem.new(viewer1, movie1)
queue_item2 = QueueItem.new(viewer2, movie3)
queue_item3 = QueueItem.new(viewer3, movie2)
queue_item4 = QueueItem.new(viewer1, movie2)
queue_item5 = QueueItem.new(viewer4, movie2)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
