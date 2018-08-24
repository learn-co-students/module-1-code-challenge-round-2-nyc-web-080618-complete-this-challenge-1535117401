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
    QueueItem.all.select do |queue_item|
      queue_item.viewer == self
  end
end


  def queue_movies
    queue_items.map do |queue_item|
      queue_item.movie_title
    end
  end

  def add_movie_to_queue(movie_title)
    QueueItem.new(movie_title)
  end



def rate_movie(movie, rating_num)
  if queue_movies.include?(movie)
    QueueItem.new(movie, rating_num)
  end
    queue = queue_items.find do |queue_item|
    queue_item.rating_num = rating_num
  end
end

end
