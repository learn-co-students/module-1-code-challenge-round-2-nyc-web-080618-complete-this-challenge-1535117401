require 'pry'
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

  def queue_items
    QueueItem.all.select do |queue_item_obj|
      queue_item_obj.viewer == self

  end
end

  def queue_movies
    queue_items.map do |queue_item|
      queue_item.movie

  end
end

  def add_movie_to_queue(movie)
    Queue_item.new(self, movie)
  end

  # def rate_movie(movie,rating)
  #
  # end


end
