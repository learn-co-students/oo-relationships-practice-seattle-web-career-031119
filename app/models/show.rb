class Show

  attr_accessor :name

  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


 #  def self.movie_contracts
 #    Contract.all.select {|contract|
 #      contract.work.class == Movie
 #    }
 #  end
 #
 #  def self.movie_names
 #    self.movie_contracts.collect {|contracts|
 #      contracts.work.name
 #    }
 #  end
 #
 # # def self.get_movie_names
 # #   Movie.all.collect {|movie|
 # #      movie.name
 # #  }
 # #  end
 #
 #  def self.contracts_of_shows_with_name_of_movie
 #    all.select {|show|
 #      self.movie_names.include?(show.name)
 #    }
 #  end
 #
 #  def


  # def self.on_the_big_screen
  #   contracts_of_shows_with_name_of_movie.collect {|contract|
  #     contract.work
  #   }
  # end
  #

  def on_the_big_screen
    movie_names = Movie.all.collect {|movie|
      movie.name
    }
    movie_names.select {|movie_name|
      movie_name == self.name
    }
  end
end
