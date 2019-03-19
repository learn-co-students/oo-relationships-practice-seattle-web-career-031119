class Actor
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def learn_character(name)
    Character.new(name, self)
  end

  def characters
    Character.all.select{|character| character.actor == self}
  end

  def num_characters
    self.characters.count
  end

  def self.most_characters
    @@all.max_by{|actor| actor.num_characters}
  end

  def self.all
    @@all
  end
end
