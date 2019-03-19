class Ingredient
  attr_reader :name, :calorie_count, :dessert

  @@all = []

  def initialize(name, calorie_count, dessert)
    @calorie_count = calorie_count
    @name = name
    @dessert = dessert
    @@all << self
  end

  def is?(type)
    self.name.include(type)
  end

  def self.find_by_name(name)
    @@all.select{|ingredient| ingredient.is?(name)}
  end

  def self.all
    @@all
  end
end
