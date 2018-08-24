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
      queue_item.movie_title == self
    end
  end

  def viewers
    queue_items.map do |queue_item|
      queue_item.viewer
  end
end

  def average_rating
    total = 0.0
    queue_items.each do |queue_item|
      total += queue_item.rating_number
    end
    total / queue_items.length
  end

  def self.highest_rated
  highest = QueueItem.all.sort_by |queue_item|
    queue_item.rating_number
  end
 highest.last
end

end
