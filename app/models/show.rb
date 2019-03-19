require_relative "./filmProject.rb"
class Show
  include FilmProject
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @episode_count = 0
    @@all << self
  end

  def release_episode
    episode_count += 1
    Episode.new(episode_count, self)
  end

  def episodes
    Episode.all.select{|episode| episode.show == self}
  end

  def episode_count
    self.episodes.count
  end

  def self.names
    @@all.map{|show| show.name}
  end

  def self.productions_on_the_big_screen
    Production.all.select{|production|
      self.names.include?(production.film_project.name) && production.film_project.class == Movie
    }
  end

  def self.on_the_big_screen
    self.productions_on_the_big_screen.map{|production| production.film_project}.uniq
  end

  def self.all
    @@all
  end
end
