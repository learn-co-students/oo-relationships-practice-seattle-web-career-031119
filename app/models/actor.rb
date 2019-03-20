class Actor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_characters
    actors = Character.all.collect {|character|
      character.actor
    }
    actors.max_by {|actor|
      actors.count(actor)
    }
  end

end
