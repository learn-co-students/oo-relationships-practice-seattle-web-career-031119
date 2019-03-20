class Client

  attr_accessor :name, :trainer

  @@all = [ ]

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def assign_trainer(trainer)
    self.trainer = trainer
  end 

end
