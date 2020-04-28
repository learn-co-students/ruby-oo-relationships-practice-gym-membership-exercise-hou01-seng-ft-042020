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
    Membership.all.select do |m|
      m.lifter == self
    end
  end 

  def gyms
    self.memberships.map do |m|
      m.gym 
    end
  end

  def self.avg_lift_total 
    self.all.inject(0) do |sum, lifter|
      sum + lifter.lift_total
    end / self.all.length
  end

  def cost_of_membership
    self.memberships.inject(0) do |sum, m|
      sum + m.cost
    end
  end

  def sign_up(gym, cost)
    Membership.new(cost, self, gym)
  end


end
