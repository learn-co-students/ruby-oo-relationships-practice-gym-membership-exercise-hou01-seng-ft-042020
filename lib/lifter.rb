# XGet a list of all lifters - Lifter.all
# XGet a list of all the memberships that a specific lifter has - lifter_membership
# XGet a list of all the gyms that a specific lifter has memberships to - lifter_gym_membership
# XGet the average lift total of all lifters - self.average_of_all_lifters
# XGet the total cost of a specific lifter's gym memberships - total_cost_of_memberships
# XGiven a gym and a membership cost, sign a specific lifter up for a new gym - signup

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

  def lifter_membership #l1.lifter_membership
    Membership.all.select {|membership| membership.lifter == self}
  end

  def lifter_gym_membership #l1
    lifter_membership.map {|membership| membership.gym}
  end

  def self.average_of_all_lifters
    total_lift_weight = 0
    number_of_lifters = self.all.count
    self.all.each do |lifter|
      total_lift_weight += lifter.lift_total
    end
    (total_lift_weight/number_of_lifters).to_f
  end

  def total_cost_of_memberships
    total_cost = 0
    lifter_membership.each do |membership|
      total_cost += membership.cost
    end
      total_cost
  end

  def signup(cost, gym) #l2.signup(g2, 40)
    Membership.new(cost, self, gym)
  end


end
