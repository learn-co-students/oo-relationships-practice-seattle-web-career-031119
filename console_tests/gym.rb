seattle = Location.new('seattle')
nyc = Location.new('nyc')

puts "--------------Loc instances------------"
p Location.all
puts

mera = Client.new('mera')
rayna = Client.new('rayna')
denise = Client.new('denise')

puts "--------------Client instances------------"
p Client.all
puts

kelly = Trainer.new('kelly')
chad = Trainer.new('chad')

puts "--------------Trainer instances------------"
p Trainer.all
puts

s1 = Session.new(kelly, seattle, mera)
s2 = Session.new(chad, nyc, rayna )
s3 = Session.new(chad, seattle, denise)

puts "--------------Session instances------------"
p Session.all
puts

puts "mera.assing trainer to kelly------------"
p mera.assign_trainer(kelly)
p mera
puts "rayna.assing trainer to chad------------"
p rayna.assign_trainer(chad)
p rayna
puts "denise.assing trainer to chad------------"
p denise.assign_trainer(chad)
p denise

puts "Location. least clients----------------"
p Location.least_clients

puts "Trainer . most clients ------------------"
p Trainer.most_clients
