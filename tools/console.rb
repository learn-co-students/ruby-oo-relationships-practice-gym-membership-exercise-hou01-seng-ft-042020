# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter1 = Lifter.new("freddy", 200)
lifter2 = Lifter.new("rick", 100)
lifter3 = Lifter.new("john", 300)
lifter4 = Lifter.new("bob", 400)

gym1 = Gym.new("Planet Fitness")
gym2 = Gym.new("LA fitness")
gym3 = Gym.new("24H Fitness")

mem1 = Membership.new( lifter1, gym1, 200)
mem2 = Membership.new( lifter2, gym1, 200)
mem3 = Membership.new( lifter3, gym2, 100)
mem4 = Membership.new( lifter4, gym3, 300)
mem5 = Membership.new( lifter1, gym2, 100)


binding.pry

puts "Gains!"
