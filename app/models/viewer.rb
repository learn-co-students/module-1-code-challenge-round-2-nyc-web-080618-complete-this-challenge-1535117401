class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select do |item|
      item.viewer == self
    end
  end

  def queue_movies
    my_queue = self.queue_items
    my_queue.map do |item|
      item.movie
    end
  end

  def add_movie_to_queue(movie)
    QueueItem.new(movie, self)
  end

  def rate_movie(movie, rating)
    my_queue_item = QueueItem.all.find do |item|
      item.movie == movie && item.viewer == self
    end

    if my_queue_item == nil
      new_item = self.add_movie_to_queue(movie)
      new_item.rating = rating
    else
      my_queue_item.rating = rating
    end
  end

end
