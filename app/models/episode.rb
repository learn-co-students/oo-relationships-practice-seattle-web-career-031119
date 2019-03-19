class Episode
  attr_reader :number

  @@all = []

  def initialize(number, show)
    @number = number
    @show = show
    @@all << self
  end

  def self.all
    @@all
  end
end
