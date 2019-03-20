class Trainer

  attr_accessor :name

  @@all = [ ]

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.most_clients
    trainers = Client.all.collect {|client|
      client.trainer
    }
    top_trainer = trainers.max_by {|trainer|
      trainers.count(trainer)
    }
    puts "#{top_trainer.name.capitalize}, you get a bonus!!!"
    top_trainer
  end

end
