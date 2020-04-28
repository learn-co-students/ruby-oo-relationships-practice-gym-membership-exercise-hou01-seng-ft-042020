# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here


#gym = ("name")
g1 = Gym.new("Southtowns Gym")
g2 = Gym.new("Pop's Boxing Gym")
g3 = Gym.new("Valley Girl Gym")
g4 = Gym.new("Old People Gym")
g5 = Gym.new("Women's Only Gym")

#lifters = ("name", lift_total)
l1 = Lifter.new("Marilyn", 23)
l2 = Lifter.new("Ed", 32)
l3 = Lifter.new("Phil", 54)
l4 = Lifter.new("Heather", 19)
l5 = Lifter.new("Eddie", 300)
# l6 = Lifter.new("Mary", 38)
# l7 = Lifter.new("Alex", 238)
# l8 = Lifter.new("Brian", 119)
# l9 = Lifter.new("Nick", 287)
# l10 = Lifter.new("Kevin", 159)

#membership = (cost, gym, lifter)
m1 = Membership.new(20, g4, l1)
m2 = Membership.new(20, g4, l2)
m3 = Membership.new(20, g4, l3)
m4 = Membership.new(20, g4, l4)
m5 = Membership.new(20, g2, l2)
m6 = Membership.new(20, g5, l1)
m7 = Membership.new(20, g5, l4)
m8 = Membership.new(20, g2, l5)
m9 = Membership.new(20, g2, l3)
m10 = Membership.new(20, g2, l4)


binding.pry

puts "Gains!"
