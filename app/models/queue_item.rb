class QueueItem

attr_reader :viewers, :movies

@@all = []

def initialize(viewers, movies)
  @viewers = viewers
  @movies = movies
  @@all << self
end


def self.all
  @@all
end


def viewer
    @@all.map do |queue_item|
    queue_item.viewers
    binding.pry
  end
end


def movie
  @@all.map do |queue_item|
    queue_item.movies
  end
end

def rating
  @@all.select do |queue_item|
    queue_item.rating == self
  end
end #check this




end## END OF CLASS
