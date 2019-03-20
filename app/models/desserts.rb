class Desserts

  attr_accessor  :name, :bakery

  @@all = []

  def initialize(name, bakery)
    @bakery = bakery
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def calories





end
