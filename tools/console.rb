# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here


# make 5 lifters 


phyllis = Lifter.new("Phyllis", 55)
maureen = Lifter.new("Maureen", 77)
kelz = Lifter.new("Kelz", 206)
rhonda = Lifter.new("Rhonda", 148)
david = Lifter.new("David", 188 )

# make 3 gyms

planet_fitness = Gym.new("Planet Fitness")
golds = Gym.new("Gold's Gym")
wow = Gym.new("Workout World")

# make four memberships 
# 1 lifter with no gym membership who gets signed up later, 2 at one gym,
# and 1 each for the remaining gyms
m1 = Membership.new(planet_fitness, 12.99, david)
m2 = Membership.new(planet_fitness, 6.99, maureen)
m3 = Membership.new(golds, 45, rhonda)
m5 = Membership.new(golds, 28.99, david)
m4 = Membership.new(wow, 26.01, kelz)
binding.pry

# phyllis.sign_up(a_gym, membership_cost)
puts "Gains!"

