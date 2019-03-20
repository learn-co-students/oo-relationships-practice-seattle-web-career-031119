class Contract

  attr_accessor :name, :work, :character

  @@all = []

  def initialize(work, character)
    @name = name
    @work = work
    @character = character
    @@all << self
  end

  def self.all
    @@all
  end

end
