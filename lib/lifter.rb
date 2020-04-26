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

  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    memberships.map {|membership| membership.gym}
  end

  def self.average_lift_total
    average = 0
    total = 0
    all.each {|lifter| total += lifter.lift_total}
    average = total / all.length
    average
  end

  def total_cost
    total = 0
    memberships.each {|membership| total += membership.cost}
    total
  end

  def create_membership(cost, gym)
    Membership.new(cost, self, gym)
  end
end
