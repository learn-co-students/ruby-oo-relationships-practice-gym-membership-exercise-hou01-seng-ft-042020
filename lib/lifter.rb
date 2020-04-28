class Lifter
  attr_reader :lifter, :lift_weight
  @@all = []

  def initialize(lifter, lift_weight)
    @lifter = lifter
    @lift_weight = lift_weight
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|memberships| memberships.lifter == self}
  end

  def gyms
    memberships.map{|membership| membership.gym}.uniq
  end

  def avg_lift
    weight = @@all.map {|lifter| lifter.lift_weight}
    avg = weight.sum / weight.size
  end

  def total_cost_membership
    cost = memberships.map {|memberships| memberships.cost}
    cost.sum
  end

  def sign_gym(gym, cost)
    Membership.new(self, gym, cost)
  end
end
