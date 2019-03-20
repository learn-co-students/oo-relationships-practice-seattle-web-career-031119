class Passenger

  attr_accessor

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select {|ride| ride.passenger == self}
  end

  def drivers
    rides.collect {|ride|
      ride.driver
    }
  end

  def total_distance
    self.rides.collect {|ride|
      ride.distance
    }.inject(:+)
  end

  def self.premium_members
    all.select {|passenger| passenger.total_distance > 100.0}
  end

end
