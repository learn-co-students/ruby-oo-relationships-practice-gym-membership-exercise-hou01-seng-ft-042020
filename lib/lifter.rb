class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  def self.all
    @@all
  end

  def membership
    Membership.all.select {|x| x.lifter == self}
  end

  def gyms
    membership.map {|x| x.gym.name}
  end

  def self.average
    a = self.all.map {|x| x.lift_total}
    a.sum / a.size
  end

  def memcost
    a = membership.map {|x| x.cost}
    a.sum
  end

  def signup(gym,cost)
    Membership.new(cost,self,gym)
  end
end
