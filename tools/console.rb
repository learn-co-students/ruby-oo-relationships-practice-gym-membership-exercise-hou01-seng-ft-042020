# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

g1=Gym.new("Planet Fitness")
g2=Gym.new("24 hours")
g3=Gym.new("workers")

l1=Lifter.new("yaya", 187)
l2=Lifter.new("baya",987)
l3=Lifter.new("saya",82)

m1=Membership.new(10,g1,l1)
m2=Membership.new(20,g2,l2)
m3=Membership.new(15,g3,l3)

binding.pry

puts "Gains!"
