class Membership

  attr_reader :cost, :gym, :lifter
  @@all = []

  def initialize(cost, g, l)
    @cost = cost
    @gym = g
    @lifter = l
    @@all << self
  end

  def self.all 
    @@all
  end

end
