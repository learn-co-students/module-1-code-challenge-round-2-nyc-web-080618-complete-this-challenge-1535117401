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
    arr = QueueItem.all.select do |queue_item|
      queue_item.movies == self
    end
    arr
  end

  def viewers
    queue_items.map do |queue_item|
      queue_item.viewers
    end
  end

  def average_rating
    total = 0

    arr = viewers.each do |movie|
      total += movie.rating
    end
    total/arr.length
  end

  def highest_rated
    average_rating.sort do |average_rating|
      average_rating.last
    end
  end



end#END OF CLASS
