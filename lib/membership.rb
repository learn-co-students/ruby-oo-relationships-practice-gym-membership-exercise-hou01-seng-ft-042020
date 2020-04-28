require_relative "gym.rb"
require_relative "lifter.rb"

class Membership

  attr_reader :cost, :gym, :lifter
  @@all =[]

  def initialize(cost, gym, lifter)
    @cost = cost
    @gym = gym
    @lifter = lifter
    @@all << self
  end

  def self.all
    @@all
  end


end
