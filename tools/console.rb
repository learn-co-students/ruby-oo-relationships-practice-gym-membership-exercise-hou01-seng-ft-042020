# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
stan = Lifter.new("Stanley", 300)
moe = Lifter.new("Maurice", 350)
bran = Lifter.new("Brandon", 250)

planet = Gym.new("Planet Fitness")
anytime = Gym.new("Anytime Fitness")
twofour = Gym.new("24hr")

memb1 = Membership.new(20, stan, planet)
memb2 = Membership.new(40, moe, anytime)
memb3 = Membership.new(30, bran, planet)
memb3 = Membership.new(15, moe, twofour)

Lifter.all
Gym.all
Membership.all

moe.memberships
moe.gyms
moe.total_cost
bran.create_membership(20, twofour)

Lifter.average_lift_total

planet.memberships
twofour.lifters
twofour.lifters_name
planet.lift_total

binding.pry

puts "Gains!"
