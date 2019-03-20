
mera = Passenger.new
rayna = Passenger.new
denise = Passenger.new

puts "----------------- Passenger instances------------------"
p Passenger.all
puts


frank = Driver.new
bob = Driver.new
joe = Driver.new

puts "----------------- Driver instances------------------"
p Driver.all
puts


qfc = Ride.new(mera, frank, 50)
concert = Ride.new(rayna, bob, 150)
yoga = Ride.new(mera, frank, 100)
somewhere = Ride.new(denise, joe, 20)

puts "----------------- Ride  instances------------------"
p Ride.all
puts


puts "mera.drivers-----------------"
p mera.drivers

puts "rayna.rides------------------"
p rayna.rides

puts "denise.total_distance-----------"
p denise.total_distance

puts "Passenger.premium_members-------"
p Passenger.premium_members

puts "frank.passenger------------"
p frank.passengers

puts "Driver.mileage_cap---------"
p Driver.mileage_cap(30.0)

puts "Ride.average -----------------"
p Ride.average_distance

puts "frank.total_milage-----"
p frank.total_milage
