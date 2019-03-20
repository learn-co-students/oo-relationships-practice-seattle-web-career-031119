class Session

  attr_accessor :trainer, :location, :client

  @@all = [ ]

  def self.all
    @@all
  end

  def initialize(trainer, location, client)
    @trainer = trainer
    @location = location
    @client = client
    @@all << self
  end

  def get_location_sessions(location)
    all.select {|session|
      session.location = location
    }
  end

  def get_client
    self.get_location_sessions.map {|session|
      session.client
    }
  end


end
