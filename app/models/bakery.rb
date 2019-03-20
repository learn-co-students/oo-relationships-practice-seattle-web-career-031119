# Bakery
# rels: bakery -≡ dessert -≡ ingredients - calorie count

class Bakery
  attr_accessor :name
  @@all = [ ]

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def desserts
    Dessert.all.select { |dessert| dessert.bakery == self}
  end

  def ingredients
    self.desserts.map { |dessert| dessert.ingredients }.flatten.sort
  end

  def average_calories
    total_cals = desserts.inject {|sum, dessert| sum + dessert.calories}.to_f
    total_cals / desserts.count
  end
end

class Dessert
  attr_reader :name, :bakery, :ingredients

  @@all = [ ]

  def self.all
    @@all
  end

  def initialize(name, bakery, ingredients)
    @name = name
    @bakery = bakery
    @ingredients = ingredients
    @ingredients.each { |ingredient| Ingredient.new(ingredient, self, 100 + Random.rand(300))}
    @@all << self
  end

  def calories
    ingredients.inject { |sum, ingredient| sum + ingredient.calorie_count}
  end

end

class Ingredient
  attr_reader :name, :dessert, :calorie_count

  @@all = [ ]

  def self.all
    @@all
  end

  def initialize(name, dessert, calorie_count)
    @name = name
    @dessert = dessert
    @calorie_count = calorie_count
    @@all << self
  end

  def self.find_all_by_name(name)
    self.all.select { |ingredient| ingredient.name.include?(name)}
  end

end
