# You don't need to require any of the files in lib or pry.
# We've done it for you here.

require_relative '../config/environment.rb'

# test code goes here

esther = Lifter.new("Esther", 70)
james = Lifter.new("James", 100)

gym1 = Gym.new("Lifetime")
gym2 = Gym.new("LA Fitness")

membership1 = Membership.new(esther, gym1, 50)
membership2 = Membership.new(esther, gym2, 25)
membership3 = Membership.new(james, gym1, 50)
membership4 = Membership.new(james, gym2, 30)



binding.pry

puts "Gains!"
