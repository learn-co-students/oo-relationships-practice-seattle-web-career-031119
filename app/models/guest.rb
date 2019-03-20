class Guest

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select {|trip|
      trip.guest == self
    }
  end

  def listings
    trips.collect {|trip|
      trip.listing
    }.uniq
  end

  def trip_count
    trips.count
  end

  def self.pro_traveller
    self.all.select {|guest| guest.trips.count > 1}
  end


  def self.find_all_by_name(name)
    @@all.select {|guest|
      guest.name == name
    }
  end


end
