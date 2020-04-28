
# Deliverable:

# list of all Memberships

class Membership
  attr_reader :cost, :lifter, :gym
  @@all = []

  def initialize(gym, cost, lifter)
    @cost = cost
    @gym = gym
    @lifter = lifter
    self.class.all << self 
  end

  def self.all
    @@all
  end 
  
end
