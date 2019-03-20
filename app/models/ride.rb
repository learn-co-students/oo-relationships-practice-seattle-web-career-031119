class Ride

  attr_accessor :passenger, :driver, :distance

  @@all = []

  def initialize(passenger, driver, distance)
    @passenger = passenger
    @driver = driver
    @distance = distance.to_f
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    distances = all.collect {|ride| ride.distance}
    distances.inject(:+) / distances.length
  end

end
