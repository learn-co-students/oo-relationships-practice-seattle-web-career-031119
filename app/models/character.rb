class Character
  attr_reader :name, :actor

  @@all = []

  def initialize(name, actor)
    @name = name
    @actor = actor
    @@all << self
  end

  def appearences
    Production.all.select{|production| production.character == self}
  end

  def num_appearences
    self.appearences.count
  end

  def self.most_appearances
    @@all.max_by{|actor| actor.num_appearences}
  end

  def self.all
    @@all
  end
end
