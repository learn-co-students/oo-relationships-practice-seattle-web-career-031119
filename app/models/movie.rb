class Movie

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def contracts
    Contract.all.select {|contract|
      contract.work == self
    }
  end

  def characters
    contracts.collect {|contract|
      contract.character
    }
  end

  def actors_count
    characters.collect {|character|
      character.actor
    }.count
  end

  def self.most_actors
    all.max_by {|movie|
      movie.actors_count
    }
  end

end
