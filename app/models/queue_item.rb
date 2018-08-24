class QueueItem

attr_reader :viewer_ob, :movie_ob
attr_accessor :rating


@@all = []

def initialize(viewer_ob, movie_ob, rating=nil)
  @viewer_ob = viewer_ob
  @movie_ob = movie_ob
  @rating = rating
  self.class.all << self
end

def self.all
  @@all
end


# Already defined in the attr_s
# def viewer
#   self.viewer_ob
# end # end of viewer
#
# def movie
#   self.movie_ob
# end # end of movie
#
# # def rating
# # end of rating


end # end of QueueItem Class
