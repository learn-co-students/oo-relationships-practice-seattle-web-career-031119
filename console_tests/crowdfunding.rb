mera = User.new("mera")
rayna = User.new("rayna")
denise = User.new("denise")

puts "-------------- User -----------"
p User.all
puts

smarttoothbrush = Project.new("smarttoothbrush", mera, 100)
smartfork = Project.new("smartfork", rayna, 500)
smartrock = Project.new("smartrock", rayna, 400)
smartcup = Project.new("smartcup", denise, 200)

puts "-------------- Project -----------"
p Project.all
puts

p1 = Pledge.new(mera, smartfork, 50)
p2 = Pledge.new(rayna, smarttoothbrush, 100)
p3 = Pledge.new(mera, smarttoothbrush, 20)
p4 = Pledge.new(denise, smartfork, 10)
p5 = Pledge.new(rayna, smartfork, 200)

puts "-------------- Pledge -----------"
p Pledge.all
puts

puts "user. highest pledge -----"
p User.highest_pledge
puts
puts "user. multi pledge -----"
p User.multi_pledger

puts "user .project_creator-----"
p User.project_creator

puts "smartfork. backers-----"
p smartfork.backers
puts "smarttoothbrush. backers-----"
p smarttoothbrush.backers

puts "project .no_pledges----"
p Project.no_pledges

puts "project.above_goal------"
p Project.above_goal

puts "Project.most_backers----------"
p Project.most_backers
