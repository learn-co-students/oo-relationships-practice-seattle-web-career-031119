class Location
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def sessions
    Session.all.select{|session| session.location == self}
  end

  def trainers
    self.sessions.map{|session| session.trainer}
  end

  def clients
    self.trainers.map{|trainer| trainer.clients}.flatten
  end

  def num_clients
    self.clients.count
  end

  def self.least_clients
    @@all.min_by{|location| location.num_clients}
  end

  def self.all
  @@all
  end
end
