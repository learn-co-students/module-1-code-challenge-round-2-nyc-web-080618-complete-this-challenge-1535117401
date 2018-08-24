class Viewer
  attr_accessor :username


@@all = []

def initialize(username)
  @username = username
  @@all << self
end

def self.all
  @@all
end


# this method should return an array of `QueueItem`
# instances associated with this instance of `Viewer`
def queue_items
  QueueItem.all.select do |queue_ob|
    #binding.pry -> true
    queue_ob.viewer_ob == self
  end
end # end of queue_items


def queue_movies
  queue_items.map do |queue_ob|
    #binding.pry
      queue_ob.movie_ob
  end
end # end of queue_movies

# DFI - (viewer_ob, movie_ob, rating)
def add_movie_to_queue(movie)
  QueueItem.new(self, movie)
end # end of add_movie_to_queue

# I am not done with this method`
def rate_movie(movie, new_rating)
  queue_items.map do |queue_ob|
    if queue_ob.rating == nil
      queue_ob.rating == new_rating
    elsif queue_ob.rating != nil
      QueueItem.new(self, movie, new_rating)
    end
  end
end # end of rate_movie(movie, rating)

end # end of Viewer Class
