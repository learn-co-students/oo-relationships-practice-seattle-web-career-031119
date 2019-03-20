class User

  attr_accessor :name

  @@all = [ ]

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.highest_pledge
    Pledge.all.max_by {|pledge|
      pledge.amount
    }.user
  end

  def self.multi_pledger
    users = Pledge.all.collect {|pledge|
      pledge.user
    }
    users.select {|e| users.count(e) > 1 }.uniq
  end


  def self.project_creator
    x = Project.all.collect {|project|
      project.creator
    }
    x.uniq
  end


end
