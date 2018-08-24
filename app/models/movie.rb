class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select do |item|
      item.movie == self
    end
  end

  def viewers
    my_queue = self.queue_items
    my_queue.map do |item|
      item.viewer
    end
  end

  def average_rating
    ratings = self.queue_items.map do |viewer|
      viewer.rating
    end
    sum = 0.0
    if ratings.compact.length > 0
      ratings.compact.each do |rating|
        sum += rating
      end
    end
    average = sum / ratings.length
  end

  def highest_rated
    max = 0
    self.queue_items.each do |item|
      if item.rating > max
        max = item.rating
      end
    end

    best_movie = queue_items.find do |item|
      item.rating == max
    end

    best_movie.movie
  end

end
