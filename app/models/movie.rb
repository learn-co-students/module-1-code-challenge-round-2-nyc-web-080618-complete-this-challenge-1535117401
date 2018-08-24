class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select do |queue_item|
    queue_item.movie == self

  end
end
  def viewers
    queue_items.map do |queue_item|
      queue_item.viewer
  end
end

  def average_rating

    # would have sorted all the ratings with each and divided it by all the ratings 
  end

  def movie_rated
    QueueItem.all.sort do |queue_item|
      queue_item.rating
  end.last
end
end
