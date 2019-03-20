class Character

  attr_accessor :name, :actor

  @@all = []

  def initialize(name, actor)
    @name = name
    @actor = actor
    @@all << self
  end

  def self.all
    @@all
  end

  def get_works
    Contract.all.select {|contract|
      contract.character == self
    }
  end

  def self.most_appearances
    @@all.max_by {|character|
      character.get_works.count
    }
  end

end
