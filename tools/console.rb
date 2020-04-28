# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'
g1 = Gym.new("24")
g2 = Gym.new("LA")
g3 = Gym.new("Planet")
g4 = Gym.new("Connect")
g5 = Gym.new("Fitness")

l1 = Lifter.new("Berlin",325)
l2 = Lifter.new("Tokio",300)
l3 = Lifter.new("Nairobi",255)
l4 = Lifter.new("Denver",280)
l5 = Lifter.new("Rio",230)

m1 = Membership.new(25,l1,g5)
m2 = Membership.new(20,l1,g4)
m3 = Membership.new(25,l5,g5)
m4 = Membership.new(50,l3,g2)
m5 = Membership.new(60,l5,g1)
m6 = Membership.new(15,l1,g3)
m7 = Membership.new(60,l4,g1)
m8 = Membership.new(25,l2,g5)


# test code goes here

binding.pry

puts "Gains!"
