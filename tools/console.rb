# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1 = Lifter.new("Mike",150)
l2 = Lifter.new("Jonathan",250)
g1 = Gym.new("Gainz")
g2 = Gym.new("Alphalete")

m1 = Membership.new(75,l1,g1)
m2 = Membership.new(100,l1,g2)
m3 = Membership.new(75,l2,g1)


binding.pry

puts "Gains!"
