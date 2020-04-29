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
    memberships.map {|t| t.gym}
  end
 
  def self.average_lift
    total = 0
    total_lifters = self.all.count
    self.all.each {|lifter| total += lifter.lift_total}
    total/total_lifters
  end

  def total_cost
    self.memberships.collect {|p| p.cost}.sum
  end

  def new_membership(cost,gym)
    Membership.new(cost,gym,self)
  end


end
