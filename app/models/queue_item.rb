class QueueItem
  attr_reader :movie_title
  attr_accessor :rating_num
  @@all = []
  def initialize(viewer, movie_title, rating_num = nil)
    @movie_title = movie_title
    @rating = rating_num
    @viewer = viewer
    @@all << self
  end

    def self.all
      @@all
    end

#return all queue_items assciated with this QueueItme
def all_queue_items
  self.all.select do |queue_item|
    queue_item == self
  end
end

# using helper function all_queue_items above to get all viewers from the QueueItem
def viewer
      all_queue_items.map do |queue_item|
        queue_item.viewer
    end
  end

# using helper function all_queue_items above to get all movies from the QueueItem
  def movie
    all_queue_items.map.select do |queue_item|
      queue_item.movie_title
    end
  end

  def rating
    self.rating
  end


end
