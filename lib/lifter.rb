class Lifter
  attr_reader :name, :lift_total 

  @@all = []

  def initialize(name, lift_total = 0)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  def self.all
    @@all
  end

  def all_memberships
    Membership.all.select {|m| m.lifter == self}
  end

  def gyms
    all_memberships.map {|m| m.gym}
  end

  def self.average_lift
    l = Lifter.all.map{|l| l.lift_total}
    l.sum/l.size
  end

  def total_cost
    c = all_memberships.map{|m| m.cost}
    c.sum
  end

  def sign_up(gym, cost)
    Membership.new(self, gym, cost)
  end



end
