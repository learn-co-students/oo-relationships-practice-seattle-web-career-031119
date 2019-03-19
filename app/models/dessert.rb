class Dessert
  attr_reader :name, :bakery

  @@all = []

  def initialize(name, bakery)
    @name = name
    @bakery = bakery
    @@all << self
  end

  def add_ingredient(name, calorie_count)
    Ingredient.new(name, calorie_count, self)
  end

  def ingredients
    Ingredient.all.select{|ingredient| ingredient.dessert == self}
  end

  def calories
    self.ingredients.reduce(0){|acc, ingredient| acc += ingredient.calorie_count}
  end

  def self.all
    @@all
  end
end
