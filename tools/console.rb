require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

macrina = Bakery.new("macrina")
mightyoh = Bakery.new("mightyoh")
honeybear = Bakery.new("honeybear")

puts "---------------- Bakery -------------"
p Bakery.all
puts

cake = Desserts.new("cake", macrina)
doughnut = Desserts.new("doughnut", mightyoh)
scone = Desserts.new("scone", honeybear)

puts "---------------- Desserts -------------"
p Desserts.all
puts

i1 = Ingredients.new(cake, 100)
i2 = Ingredients.new(cake, 200)
i3 = Ingredients.new(doughnut, 500)
i4 = Ingredients.new(doughnut, 600)
i5 = Ingredients.new(scone, 700)

puts "---------------- Ingredients -------------"
p Ingredients.all
puts


puts "macrina.ingredients----------""
p macrina.ingredients

puts "mightyoh.ingredients----------""
p mightyoh.ingredients

puts "macrina.desserts----------""
p macrina.desserts



binding.pry
0
