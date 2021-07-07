class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end
  
  def self.all
    @@all
  end

  def all_memberships
    Membership.all.select{|m| m.gym == self}
  end

  def lifters
    all_memberships.map{|m| m.lifter}
  end

  def lifter_names
    lifters.map{|l| l.name}
  end

  def gym_lift_total
    t = lifters.map{|l| l.lift_total }
    t.sum
  end



end
