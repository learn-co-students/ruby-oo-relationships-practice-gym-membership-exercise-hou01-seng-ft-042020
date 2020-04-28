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

  def self.avg_lift
    @@all.map {|lifter| lifter.lift_total}.sum / @@all.count
  end

  def total_cost
    memberships.map {|membership| membership.cost}.sum
  end

  def sign_up(cost,lifter,gym)
    new_lifter = Membership.new(cost,self,gym)
  end
end
