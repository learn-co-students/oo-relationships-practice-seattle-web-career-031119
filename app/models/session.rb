class Session
  attr_reader :trainer, :client, :location

  @@all = []

  def initialize(trainer, client, location )
    @client = client
    @location = location
    @trainer = trainer
    @@all << self
  end

  def self.all
  @@all
  end
end
