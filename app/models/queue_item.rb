class QueueItem

  attr_accessor :movie, :viewer, :rating

  @@all = []

  def initialize(movieIn, viewerIn, ratingIn = nil)
    @movie = movieIn
    @viewer = viewerIn
    @rating = ratingIn
    @@all << self
  end

  def self.all
    @@all
  end
end
