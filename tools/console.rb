# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1 = Lifter.new("lname1", 21)
l2 = Lifter.new("lname2", 321)
l3 = Lifter.new("lname3", 121)
l3 = Lifter.new("lname4", 151)
l4 = Lifter.new("lname5", 31)
l5 = Lifter.new("lname6", 211)
g1 = Gym.new("gname1")
g2 = Gym.new("gname2")
g3 = Gym.new("gname3")


m1 = Membership.new(13, l1, g1)
m2 = Membership.new(12, l2, g1)
m3 = Membership.new(31, l3, g3)
m4 = Membership.new(14, l4, g2)
m5 = Membership.new(13, l5, g2)
m6 = Membership.new(8, l5, g2)
m7 = Membership.new(2, l5, g1)




binding.pry

puts "Gains!"
