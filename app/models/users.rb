require "pry"
class User
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def make_pledge(amount, project)
    Pledge.new(amount, project, self)
  end

  def pledges
    Pledge.all.select{|pledge| pledge.user == self}
  end

  def create_project(name, goal)
    Project.new(name, goal, self)
  end

  def num_pledges
    self.pledges.count
  end

  def biggest_pledge
    big_pledge = self.pledges.max_by{|pledge| pledge.amount}
    big_pledge.nil? ? 0 : big_pledge.amount
  end

  def self.highest_pledge
    @@all.max_by{|user| user.biggest_pledge}
  end

  def self.multi_pledger
    @@all.select{|user| user.num_pledges > 1}
  end

  def self.project_creator
    Project.all.map{|project| project.creator}.uniq
  end

  def self.all
  @@all
  end
end
