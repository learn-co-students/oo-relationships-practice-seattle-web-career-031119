class Pledge

  attr_accessor :user, :project, :amount

  @@all = [ ]

  def self.all
    @@all
  end

  def initialize(user, project, amount)
    @user = user
    @project = project
    @amount = amount
    @@all << self
  end

end
