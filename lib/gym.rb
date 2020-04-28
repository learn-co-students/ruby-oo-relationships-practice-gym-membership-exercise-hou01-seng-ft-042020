class Gym
  attr_reader :gym
  @@all = []

  def initialize(gym)
    @gym = gym
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|memberships| memberships.gym == self}
  end

  def lifters
    memberships.map {|membership|membership.lifter}.uniq
  end

  def lifter_names
    lifters.map {|lifter| lifter.lifter}.uniq
  end

  def total_lift
    lifters.map {|lifter| lifter.lift_weight}.sum
  end
end
