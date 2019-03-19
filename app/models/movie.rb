require_relative "./filmProject.rb"
class Movie
  include FilmProject
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.most_actors
    @@all.max_by{|movie| movie.num_actors}
  end

  def self.all
    @@all
  end
end
