class Passenger
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def get_ride(driver, distance)
    Ride.new(driver, self, distance)
  end

  def rides
    Ride.all.select{|ride| ride.passenger == self}
  end

  def drivers
    self.rides.map{|ride| ride.driver}
  end

  def total_distance
    self.rides.reduce(0){|acc, ride| acc += ride.distance}
  end

  def premium?
    self.total_distance > 100
  end

  def self.premium_member
    @@all.select{|passenger| passenger.premium?}
  end

  def self.all
    @@all
  end
end
