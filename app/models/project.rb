class Project

  attr_accessor :name, :creator, :goal_amount

  @@all = [ ]

  def self.all
    @@all
  end

  def initialize(name, creator, goal_amount)
    @name = name
    @creator = creator
    @goal_amount = goal_amount
    @@all << self
  end

  def backers
    x = Pledge.all.select {|pledge|
      pledge.project == self
    }
    x.collect {|pledge|
      pledge.user
    }
  end

  def self.no_pledges
    x = Pledge.all.collect {|pledge|
      pledge.project
    }.uniq
    self.all - x
  end

  def self.above_goal
    all.select {|project|
      x = Pledge.all.select {|pledge|
        pledge.project == project
      }
      y = x.inject(0) {|sum, pledge|
        sum + pledge.amount
      }
      y > project.goal_amount
    }
  end

  def self.most_backers
    all.max_by {|project|
      x = Pledge.all.select {|pledge|
        pledge.project == project
      }
      x.count
    }

  end

end
