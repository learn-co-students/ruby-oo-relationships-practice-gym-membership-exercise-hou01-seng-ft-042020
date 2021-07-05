# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
lifter_1 = Lifter.new("Cole", 1000)
lifter_2 = Lifter.new("Stacy", 2000)
lifter_3 = Lifter.new("Ally", 4000)

gym_1 = Gym.new("Flatiron Gym")
gym_2 = Gym.new("Gold's Gym")
gym_3 = Gym.new("Not a Gym, Gym")

mem_1 = Membership.new(100, lifter_1, gym_1)
mem_2 = Membership.new(1000, lifter_1, gym_2)
mem_3 = Membership.new(900, lifter_1, gym_3)
mem_4 = Membership.new(500, lifter_2, gym_1)
mem_5 = Membership.new(600, lifter_2, gym_2)



binding.pry

puts "Gains!"
