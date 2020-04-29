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

  def memberships
    Membership.all.select{|p| p.gym == self}
  end

  def lifters
    memberships.map{|p| p.lifter}
  end

  def names
    lifters.map{|p| p.name}
  end



end
