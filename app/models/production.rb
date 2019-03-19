class Production
  attr_reader :film_project, :character

  @@all = []

  def initialize(film_project, character)
    @film_project = film_project
    @character = character
    @@all << self
  end

  def self.all
    @@all
  end
end
