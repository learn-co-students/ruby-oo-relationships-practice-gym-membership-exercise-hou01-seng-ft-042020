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
    Membership.all.select {|x| x.gym == self}
  end

  def lifters
    memberships.map {|x| x.lifter.name}
  end

  def combined
    a = memberships.map {|x| x.lifter.lift_total}
    a.sum
  end

end
