
inception = Movie.new("inception")
meninblack = Movie.new("men in black")

puts "--------------- Movie instances -------------"
p Movie.all
puts

spongebob = Show.new("spongebob")
community = Show.new("community")
incept_show = Show.new("inception")

puts "--------------- Show instances -------------"
p Show.all
puts

meryl = Actor.new("meryl")
clooney = Actor.new("clooney")

puts "--------------- Actor instances -------------"
p Actor.all
puts

patrick = Character.new("patrick", clooney)
brita = Character.new("brita", meryl)
alien = Character.new("alien", meryl)
stella = Character.new("stella", meryl)
leo = Character.new("leo's char", clooney)

puts "--------------- Character instances -------------"
p Character.all
puts

c1 = Contract.new(inception, leo)
c8 = Contract.new(inception, brita)
c2 = Contract.new(community, brita)
c3 = Contract.new(spongebob, patrick)
c4 = Contract.new(meninblack, alien)
c5 = Contract.new(spongebob, alien)
c6 = Contract.new(community, alien)
c7 = Contract.new(spongebob, stella)
c9 = Contract.new(incept_show, alien)


puts "--------------- Contract instances -------------"
p Contract.all
puts

puts "Movie.most actors---------------"
p Movie.most_actors

puts "inception.on the big screen ---------------"
p incept_show.on_the_big_screen

puts "community.on the big screen ---------------"
p community.on_the_big_screen

puts "brita.get_works---------------"
p brita.get_works

puts "Character.most_appearances---------------"
p Character.most_appearances

puts "Actor.most characters---------------"
p Actor.most_characters
