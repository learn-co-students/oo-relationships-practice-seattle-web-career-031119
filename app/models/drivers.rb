class Driver
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def give_ride(passenger, distance)
    Ride.new(self, passenger, distance)
  end

  def rides
    Ride.all.select{|ride| ride.driver == self}
  end

  def passengers
    self.rides.map{|ride| ride.passenger}
  end

  def miles_travelled
    self.rides.reduce(0){|acc, ride| acc += ride.distance}
  end

  def self.mileage_cap(cap)
    @@all.select{|driver| driver.miles_travelled > cap}
  end

  def self.all
    @@all
  end
end
