require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# rylan = User.new("Rylan")
# charlotte = User.new("Charlotte")
# esther = User.new("Esther")
#
# trip = rylan.create_project("Go to NZ", 500)
# learn = esther.create_project("Learn to code", 15000)
# smackdown = charlotte.create_project("Need to know ten ways to kill a man", 1000)
#
# rylan.make_pledge(500, smackdown)
# rylan.make_pledge(1000, learn)
# esther.make_pledge(501, smackdown)


# twenty_four_hour_fitness = Location.new("24 hour fitness")
# sbp = Location.new("Seattle Bouldering Project")
# weak_world = Location.new("Weak World")
# dave = Trainer.new("Dave")
# bob = Trainer.new("Bob")
# curt = Trainer.new("Curt")
# lauren = Trainer.new("Lauren")
#
# rylan = Client.new("Rylan")
# jon = Client.new("Jon")
# joe = Client.new("Joe")
# mera = Client.new("Mera")
#
# curt.plan_session(joe, twenty_four_hour_fitness)
# bob.plan_session(rylan, sbp)
# bob.plan_session(jon, sbp)
# lauren.plan_session(mera, twenty_four_hour_fitness)

# rylan = Guest.new("Rylan")
# mera = Guest.new("Mera")
# abe = Guest.new("Abe")
# doug = Guest.new("Doug")
#
# houston = Listing.new("Houston")
# seattle = Listing.new("Seattle")
# paradise = Listing.new("Paradise")
#
# rylan.plan_trip(houston)
# rylan.plan_trip(seattle)
# rylan.plan_trip(paradise)
# abe.plan_trip(seattle)
# abe.plan_trip(houston)
# doug.plan_trip(houston)

# elouise = Bakery.new("Elouise")
# cake = elouise.make_dessert("Cake")
# cake.add_ingredient("Chocolate", 100)
# cake.add_ingredient("Chocolate frosting", 100)
# cake.add_ingredient("Chocolate filling", 300)
# cake.add_ingredient("Flour", 10)
# cake.add_ingredient("Egg", 15)

# rylan = Passenger.new("Rylan")
# joe = Passenger.new("Joe")
# doug = Passenger.new("Doug")
# hardwood = Passenger.new("Hardwood")
#
# clark = Driver.new("Clark")
# jess = Driver.new("Jess")
# sylvia = Driver.new("Sylvia")
# dave = Driver.new("Dave")
#
# dave.give_ride(rylan, 20)
# dave.give_ride(joe, 7)
# dave.give_ride(rylan, 4)
# dave.give_ride(hardwood, 32)
# jess.give_ride(doug, 3)
# jess.give_ride(joe, 31)
# jess.give_ride(rylan, 32)
# jess.give_ride(hardwood, 100)
# clark.give_ride(joe, 50)
# clark.give_ride(hardwood, 2)

fry = Actor.new("Steven Fry")
stewart = Actor.new("Patrick Stewart")
miren = Actor.new("Helen Miren")
rodriguez = Actor.new("Michelle Rodriguez")

wilson = fry.learn_character("Wilson")
churchill = fry.learn_character("Churchill")
edison = fry.learn_character("Edison")
picard = stewart.learn_character("Picard")
horror_villain = stewart.learn_character("Horror Villain")
macbeth = stewart.learn_character("Macbeth")
dame_chante = miren.learn_character("Dame Chante")
elizabeth = miren.learn_character("Elizabeth III")
woman_in_black = miren.learn_character("The Woman In Black")
charlotte = miren.learn_character("Charlotte")
bawd = rodriguez.learn_character("Badass who dies")

macbeth_movie = Movie.new("Macbeth")
macbeth_movie.star(macbeth)
macbeth_movie.star(charlotte)
macbeth_movie.star(dame_chante)

macbeth_show = Show.new("Macbeth")
macbeth_show.star(macbeth)
macbeth_show.star(charlotte)
macbeth_show.star(dame_chante)

action_show = Show.new("Boom")
action_show.star(bawd)
action_show.star(woman_in_black)
action_show.star(wilson)
action_show.star(horror_villain)

historical_movie = Movie.new("Historical Movie")
historical_movie.star(edison)
historical_movie.star(picard)
historical_movie.star(elizabeth)
historical_movie.star(charlotte)





binding.pry

"Done!"
