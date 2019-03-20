seattle = Listing.new('seattle')
portland = Listing.new('portland')

puts "---------------Listing instances -------------------"
p Listing.all
puts

mera = Guest.new("mera")
rayna = Guest.new("rayna")
denise = Guest.new("denise")

puts "---------------Guest instances -------------------"
p Guest.all
puts

spring_break = Trip.new(mera, seattle)
memorial_day = Trip.new(rayna, portland)
veterans_day = Trip.new(rayna, portland)
christmas = Trip.new(rayna, seattle)
christmas = Trip.new(mera, seattle)
summer_vacation = Trip.new(denise, seattle)

puts "---------------Trip instances -------------------"
p Trip.all
puts

puts "seattle.trips-------------------"
p seattle.trips

puts "seattle.guests-------------------"
p seattle.guests

puts "Listing.find_all_by_city('portland')---------------"
p Listing.find_all_by_city('portland')

puts "rayna.trips------------------"
p rayna.trips

puts "rayna.listings--------------------"
p rayna.listings

puts "rayna.trip_count-------------------"
p rayna.trip_count

puts "mera.trip_count-------------------"
p mera.trip_count

puts "Guest.find_all_by_name('mera')--------------"
p Guest.find_all_by_name('mera')

puts "most popular listing--------------"
p Listing.most_popular

puts "pro travlers--------------"
p Guest.pro_traveller
