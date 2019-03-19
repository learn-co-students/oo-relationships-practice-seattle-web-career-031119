class Trainer
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def plan_session(client, location)
    client.assign_trainer(self)
    Session.new(self, client, location)
  end

  def clients
    Client.all.select{|client| client.trainer == self}
  end

  def num_clients
    self.clients.count
  end

  def self.most_clients
    @@all.max_by{|trainer| trainer.num_clients}
  end

  def self.all
  @@all
  end
end
