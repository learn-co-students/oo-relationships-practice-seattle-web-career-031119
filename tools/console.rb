require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# --------------- AirBNB ---------------
# list1 = Listing.new("Seattle")
# list2 = Listing.new("San Fran")
# list3 = Listing.new("NYC")
# list4 = Listing.new("NYC")
# list5 = Listing.new("Seattle")
#
# abe = Guest.new("Abe")
# sam = Guest.new("Sam")
# hannah = Guest.new("Hannah")
# abby = Guest.new("Abby")
#
# abe_to_1 = Trip.new(list1, abe)
# abe_to_2 = Trip.new(list2, abe)
# abe_to_3 = Trip.new(list3, abe)
# sam_to_1 = Trip.new(list1, sam)
# sam_to_2 = Trip.new(list2, sam)
# hannah_to_1 = Trip.new(list1, hannah)

# --------------- Bakery ---------------
# sunshine = Bakery.new("Sunshine")
# moonshine = Bakery.new("Moonshine")
# starshine = Bakery.new("Starshine")
#
# eclair = Dessert.new("Eclair", sunshine, ["cream", "chocolate", "sugar", "eggs"])
# strawb_cake = Dessert.new("Strawberry Shortcake", sunshine, ["whipped cream", "strawberries", "sugar", "flour"])
# pistach_macaroons = Dessert.new("Pistachio Macaroons", sunshine, ["pistachios", "chocolate ganache", "sugar", "flour"])
# blueb_gelato = Dessert.new("Blueberry Gelato", moonshine, ["blueberries", "heavy cream", "sugar", "eggs"])

# --------------- Lyft ---------------


# --------------- IMDB ---------------
#matrix
matrix = Movie.new("The Matrix")

reeves = Actor.new("Keanu Reeves")
moss = Actor.new("Carrie-Ann Moss")
fishburne = Actor.new("Laurence Fishburne")
guy = Actor.new("Guy who plays Tank")

neo = Character.new("Neo", reeves)
trinity = Character.new("Trinity", moss)
morpheus = Character.new("Morpheus", fishburne)
tank = Character.new("Tank", guy)

mat_con1 = Contract.new(matrix, neo, "movie")
mat_con2 = Contract.new(matrix, trinity, "movie")
mat_con3 = Contract.new(matrix, morpheus, "movie")
mat_con4 = Contract.new(matrix, tank, "movie")

#dredd
dredd = Movie.new("Dredd")

urban = Actor.new("Karl Urban")
thirlby = Actor.new("Olivia Thirlby")
headey = Actor.new("Lena Headey")

judge_dredd = Character.new("Judge Dredd", urban)
psychic = Character.new("The Psychic", thirlby)
maw_maw = Character.new("Maw-Maw", headey)

drd_con1 = Contract.new(dredd, judge_dredd, "movie")
drd_con2 = Contract.new(dredd, psychic, "movie")
drd_con3 = Contract.new(dredd, maw_maw, "movie")

#hannibal
hannibal = Show.new("Hannibal")

mads = Actor.new("Mads Mikkelson")
dancy = Actor.new("Hugh Dancy")

dr_lecter = Character.new("Dr. Lecter", mads)
will_graham = Character.new("Will Graham", dancy)
jack_crawford = Character.new("Jack Crawford", fishburne)

antipasto = Episode.new("Antipasto", hannibal)
primavera = Episode.new("Primavera", hannibal)
secondo = Episode.new("Secondo", hannibal)

han_con1 = Contract.new(hannibal, dr_lecter, "show")
han_con2 = Contract.new(hannibal, will_graham, "show")
han_con3 = Contract.new(hannibal, jack_crawford, "show")

#sealab
sealab = Show.new("Sealab 2021")
sealab_movie = Movie.new("Sealab 2021")

goz = Actor.new("Harry Goz")
estrada = Actor.new("Erik Estrada")
ellis = Actor.new("Ellis Henican")

captain = Character.new("The Captain", goz)
marco = Character.new("Marco", estrada)
stormy = Character.new("Stormy Waters", ellis)

radio_free = Episode.new("Radio Free Sealab", sealab)
chickmate = Episode.new("Chickmate", sealab)
chi_con1 = Contract.new(chickmate, captain, "episode")
chi_con2 = Contract.new(chickmate, marco, "episode")
chi_con3 = Contract.new(chickmate, stormy, "episode")
stimutacs = Episode.new("Stimutacs", sealab)
sti_con1 = Contract.new(stimutacs, captain, "episode")

sea_con1 = Contract.new(sealab, captain, "show")
sea_con2 = Contract.new(sealab, marco, "show")
sea_con3 = Contract.new(sealab, stormy, "show")


Pry.start
