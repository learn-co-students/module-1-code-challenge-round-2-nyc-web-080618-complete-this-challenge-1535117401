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
  QueueItem.all.select do |queue_ob|
    #binding.pry -> true
      queue_ob.movie_ob == self
  end
end # end of queue_items


def viewers
  queue_items.map do |queue_ob|
    queue_ob.viewer_ob
  end
end # end of viewers


def average_rating
  avg = 0
  queue_items.each do |queue_ob|
    #binding.pry
      avg += queue_ob.rating
  end
  avg / queue_items.length
end # end of average_rating



def self.highest_rated
  array = QueueItem.all.select do |queue_ob|
    #binding.pry
      queue_ob.rating
  end
  array.sort do |queue_ob|
    queue_ob
  end
end # end of self.highest_rated

end # end of Movie Class
