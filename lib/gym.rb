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
    Membership.all.select {|membership| membership.gym == self}
  end

  def lifters
    memberships.map {|membership| membership.lifter}
  end

  def lifters_name
    lifters.map {|lifter| lifter.name}
  end

  def lift_total
    total = 0
    lifters.each {|lifter| total += lifter.lift_total}
    total
  end
end
