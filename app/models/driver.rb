class Driver

  attr_accessor

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select {|ride|
      ride.driver == self
    }
  end

  def passengers
    rides.collect {|ride|
      ride.passenger
    }
  end

  def total_milage
    self.rides.collect {|ride|
      ride.distance
    }.inject(:+)
  end

  def self.mileage_cap(distance)
    all.select {|driver|
      driver.total_milage > distance
    }
  end
  # def self.mileage_cap(distance)
  #   #all drivers
  #   #add up all rides for each driver
  #   #compare each drivers distance w/ distance
  #
  #    self.all.max_by {|film| film.festivals.count }
  #

end
