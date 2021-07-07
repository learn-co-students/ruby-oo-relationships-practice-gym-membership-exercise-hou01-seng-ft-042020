# XGet a list of all memberships - Membership.all

class Membership
  attr_accessor :cost, :lifter, :gym

  @@all = []

  def initialize(cost, lifter, gym)
    @cost = cost
    @lifter = lifter
    @gym = gym
    @@all << self
  end

  def self.all
    @@all
  end
  
end
