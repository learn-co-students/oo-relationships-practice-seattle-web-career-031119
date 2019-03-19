class Ride
  attr_reader :driver, :passenger, :distance

  @@all = []

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    @@all << self
  end

  def self.average_distance
     self.total_distance / self.total_rides
  end

  def self.total_distance
    @@all.reduce(0) {|acc, ride| acc += ride.distance}
  end

  def self.total_rides
    @@all.count
  end

  def self.all
    @@all
  end
end
