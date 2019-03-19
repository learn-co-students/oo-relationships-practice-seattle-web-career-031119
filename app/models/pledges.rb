class Pledge
  attr_reader :amount, :project, :user

  @@all = []

  def initialize(amount, project, user)
    @amount = amount
    @project = project
    @user = user
    @@all << self
  end

  def self.all
  @@all
  end
end
