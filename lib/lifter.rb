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

  def gyms
    Membership.all.select {|mem| mem.lifter == self}
  end

  def self.avg_lift_total
    sum = 0
    self.all.each{|lift| sum+= lift.lift_total}
    return (sum/self.all.length)
  end

  def gym_costs
    array = Membership.all.select{|mem| mem.lifter == self}
    total_cost = 0
    array.each{|mem| total_cost += mem.cost}
    total_cost
  end

  def sign_up_for_gym(cost, gym)
    Membership.new(cost, gym, self)
  end

end
