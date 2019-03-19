class Project
  attr_reader :name, :creator, :goal

  @@all = []

  def initialize(name, goal, creator)
    @creator = creator
    @goal = goal
    @name = name
    @@all << self
  end

  def pledges
    Pledge.all.select{|pledge| pledge.project == self}
  end

  def num_pledges
    self.pledges.count
  end

  def amount_pledged
    self.pledges.reduce(0){|acc, pledge| acc += pledge.amount}
  end

  def exceeding_goal?
    self.amount_pledged > goal
  end

  def backers
    self.pledges.map{|pledge| pledge.user}.uniq
  end

  def num_backers
    self.backers.count
  end

  def self.no_pledges
    @@all.select{|project| project.num_pledges == 0}
  end

  def self.above_goal
    @@all.select{|project| project.exceeding_goal?}
  end

  def self.most_backers
    @@all.max_by{|project| project.num_backers}
  end

  def self.all
  @@all
  end
end
