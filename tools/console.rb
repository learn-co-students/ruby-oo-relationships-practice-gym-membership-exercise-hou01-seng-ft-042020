# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1 = Lifter.new("A", 30)
l2 = Lifter.new("B", 450)
l3 = Lifter.new("C", 670)
l4 = Lifter.new("D", 220)
l5 = Lifter.new("E", 450)
l6 = Lifter.new("F", 110)
l7 = Lifter.new("G", 90)
l8 = Lifter.new("H", 670)
l9 = Lifter.new("I", 70)
l10 = Lifter.new("J", 330)

g1 = Gym.new("Golds")
g2 = Gym.new("LA Fitness")
g3 = Gym.new("Crossfit")
g4 = Gym.new("24 Hour")
g5 = Gym.new("Home Gym")

m1 = Membership.new(100,g1,l1)
m2 = Membership.new(75,g2,l1)
m3 = Membership.new(25,g1,l2)
m4 = Membership.new(50,g3,l2)
m5 = Membership.new(65,g4,l6)
m6 = Membership.new(70,g1,l7)
m7 = Membership.new(50,g2,l8)
m8 = Membership.new(40,g5,l9)
m9 = Membership.new(45,g5,l3)
m10 = Membership.new(20,g5,l3)
m11 = Membership.new(15,g1,l4)
m12 = Membership.new(10,g1,l4)
m13 = Membership.new(90,g2,l5)
m14 = Membership.new(50,g3,l5)
m15 = Membership.new(30,g5,l10)












binding.pry

puts "Gains!"
