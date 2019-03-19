class Bakery
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def make_dessert(name)
    Dessert.new(name, self)
  end

  def desserts
    Dessert.all.select{|dessert| dessert.bakery == self}
  end

  def num_desserts
    self.desserts.count
  end

  def shopping_list
    desserts.map{|dessert| dessert.ingredients}.flatten
  end

  def average_calories
    desserts.reduce(0){|acc, dessert| acc += dessert.calories} / self.num_desserts
  end

  def self.all
    @@all
  end
end
