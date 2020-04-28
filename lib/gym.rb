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
    Membership.all.select{|mem| mem.gym == self}
  end

  def lifters
    memberships.map{|mem| mem.lifter}.uniq
  end

  def lifter_names
    lifters.map{|lift| lift.name}.uniq
  end

  def combined_lift_total
    total = 0
    lifters.each{|lift| total += lift.lift_total}
    total
  end

end
