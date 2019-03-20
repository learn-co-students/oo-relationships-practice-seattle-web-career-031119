class Ingredients

  attr_accessor :dessert, :calories

  @@all = []

  def initialize(dessert, calories)
    @dessert = dessert
    @calories = calories
    @@all << self
  end

  def self.all
    @@all
  end

  def bakery
    self.dessert.bakery
  end

  def self.find_all_by_name(name)
    all.select {|ingredient|
      ingredient.name.include?(name)
    }
  end




end
