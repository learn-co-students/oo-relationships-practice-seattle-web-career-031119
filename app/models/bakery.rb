class Bakery

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def ingredients
    ingr = []
    x = Desserts.all.select {|dessert|
      dessert.bakery == self
    }
    x.select {|dessert|
      dessert.ingredient
    }

  end

  def average_calories

  end

  def self.all
    @@all
  end

  def shopping_list
    Dessert.all.   {|dessert| dessert.ingredient}
  end

end
