class Guest
  attr_reader :var

  @@all = []

  def initialize(var)
    @var = var
    @@all << self
  end

  def plan_trip(listing)
    Trip.new(self, listing)
  end

  def trips
    Trip.all.select{|trip| trip.guest == self}
  end

  def trip_count
    self.trips.count
  end

  def listings
    self.trips.map{|trip| trip.listing}
  end

  def self.pro_traveller
    @@all.select{|guest| guest.trip_count > 1}
  end

  def self.find_all_by_name(name)
    @@all.select{|guest| guest.name == name}
  end

  def self.all
  @@all
  end
end
