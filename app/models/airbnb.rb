# Airbnb
# rels: listings -≡ trips ≡- guests

class Listing
  attr_accessor :city

  @@all = [ ]

  def self.all
    @@all
  end

  def initialize(city)
    @city = city
    @@all << self
  end

  def guests
    self.trips.map { |trip| trip.guest}.uniq
  end

  def trips
    Trip.all.select { |trip| trip.listing == self }
  end

  def trip_count
    trips.count
  end

  def self.find_all_by_city(city)
    self.all.select { |listing| listing.city == city}
  end

  def self.most_popular
    Listing.all.max_by { |listing| listing.trip_count }
  end

end

class Guest
  attr_reader :name

  @@all = [ ]

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def listings
    self.trips.map { |trip| trip.listing}.uniq
  end

  def trips
    Trip.all.select { |trip| trip.guest == self}
  end

  def trip_count
    trips.count
  end

  def self.pro_traveller
    self.all.select { |guest| guest.trip_count > 1 }
  end

  def self.find_all_by_name(name)
    self.all.find { |guest| guest.name == name }
  end

end

class Trip
  attr_reader :listing, :guest

  @@all = [ ]

  def self.all
    @@all
  end

  def initialize(listing, guest)
    @listing = listing
    @guest = guest
    @@all << self
  end

end
