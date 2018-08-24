class Viewer
  attr_reader :username
  attr_accessor :rating


  @@all = []

  def initialize(username, rating)
    @username = username
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

  def queue_items
    arr = QueueItem.all.select do |queue_item|
      queue_item.viewer == self
    end
    arr
  end

  def queue_movies
    arr = queue_items.map do |queue_item|
      queue_item.movie
    end
    arr
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end





end#END OF CLASS
