class Listing

  attr_accessor :city

  @@all = []


  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select {|trip|
      trip.listing == self
    }
  end

  def guests
    trips.collect {|trip|
      trip.guest
    }.uniq
  end

  def self.find_all_by_city(city)
    trips_by_city = Trip.all.select {|trip|
      trip.listing.city == city
    }
    trips_by_city.collect {|trip|
      trip.listing
    }.uniq
  end

  def self.most_popular
    self.all.max_by {|listing| listing.trips.count}
  end


end
