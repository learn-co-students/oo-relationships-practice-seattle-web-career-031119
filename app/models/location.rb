class Location

  attr_accessor :name

  @@all = [ ]

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.least_clients
    all.min_by {|location|
      sessions_by_location = Session.all.select {|session|
        session.location == location
      }
      clients = sessions_by_location.map {|session|
        session.client
      }
      clients.uniq.count
    }
  end

end
