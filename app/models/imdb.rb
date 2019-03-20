# IMDB
# rels: movie/show -≡ character ≡- actor
#require_relative "./imdb_module"

# module IMDB_Methods
#
#   def characters
#     contracts.map( &:character )
#   end
#
#   def actors
#     characters.map( &:actor )
#   end
#
#   def contracts
#     Contract.all.select { |contract| self.characters.include?(contract.character)}
#   end
#
#   def movies
#     contracts.select { |contract| contract.type == "movie"}
#   end
#
#   def shows
#     contracts.select { |contract| contract.type == "show"}
#   end
#
#   def episodes
#     contracts.select { |contract| contract.type == "episode"}
#   end
#
# end

class Movie
  # include IMDB_Methods
  attr_accessor :name, :characters

  @@all = [ ]

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def contracts
    Contract.all.select { |contract| contract.mov_show_ep == self}
  end

  def characters
    contracts.map( &:character )
  end

  def actors
    characters.map( &:actor )
  end

  def self.names
    self.all.map( &:name )
  end

  def self.most_actors
    Movie.all.max_by { |movie| movie.actors.count }
  end

end

class Show
  # include IMDB_Methods
  attr_accessor :name

  @@all = [ ]

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.on_the_big_screen
    self.all.select { |show| Movie.names.include?(show.name) }
  end

  def contracts
    Contract.all.select { |contract| contract.mov_show_ep == self}
  end

  def characters
    contracts.map( &:character )
  end

  def actors ##
    characters.map( &:actor )
  end

  def episodes
    Episode.all.select { |ep| ep.show == self}
  end

end

class Episode
  # include IMDB_Methods
  attr_accessor :name, :show

  @@all = [ ]

  def self.all
    @@all
  end

  def initialize(name, show)
    @name = name
    @show = show
    @@all << self
  end

  # def contracts
  #   Contract.all.select { |contract| contract.character == self}
  # end
  #
  # def movies
  #   contracts.select { |contract| contract.type == "movie"}
  # end
  #
  # def shows
  #   contracts.select { |contract| contract.type == "show"}
  # end
  #
  # def episodes
  #   contracts.select { |contract| contract.type == "episode"}
  # end

end

class Character
  # include IMDB_Methods
  attr_accessor :name, :actor

  @@all = [ ]

  def self.all
    @@all
  end

  def initialize(name, actor)
    @name = name
    @actor = actor
    @@all << self
  end

  def contracts
    Contract.all.select { |contract| contract.character == self}
  end

  def movies
    contracts.select { |contract| contract.type == "movie"}
  end

  def shows
    contracts.select { |contract| contract.type == "show"}
  end

  def episodes
    contracts.select { |contract| contract.type == "episode"}
  end

  def self.most_appearances
    total_chars = 0
    most_appear_char = nil
    self.all.each do |char|
      temp_total = char.shows.count + char.movies.count + char.episodes.count
      if temp_total > total_chars
        total_chars = temp_total
        most_appear_char = char
      end
    end
    puts "Most appearances in shows or movies was #{most_appear_char.name}, with #{total_chars} appearances."
    most_appear_char
  end

end

class Actor
  # include IMDB_Methods
  attr_accessor :name

  @@all = [ ]

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def contracts
    Contract.all.select { |contract| self.characters.include?(contract.character)}
  end

  def movies
    contracts.select { |contract| contract.type == "movie"}
  end

  def shows
    contracts.select { |contract| contract.type == "show"}
  end

  def episodes
    contracts.select { |contract| contract.type == "episode"}
  end

  def characters
    Character.all.select { |char| char.actor == self}
  end

  def self.most_characters
    actors_chars = 0
    actor_w_most_chars = nil
    self.all.each do |act|
      temp_chars = act.shows.count + act.movies.count + act.episodes.count
      if temp_chars > actors_chars
        actors_chars = temp_chars
        actor_w_most_chars = act
      end
    end
    puts "Most appearances in shows or movies was #{actor_w_most_chars.name}, with #{actors_chars} appearances."
    actor_w_most_chars
  end

end

class Contract
  attr_accessor :mov_show_ep, :character, :type

  @@all = [ ]

  def self.all
    @@all
  end

  def initialize(mov_show_ep, character, type)
    @mov_show_ep = mov_show_ep
    @character = character
    @type = type
    @@all << self
  end

end
