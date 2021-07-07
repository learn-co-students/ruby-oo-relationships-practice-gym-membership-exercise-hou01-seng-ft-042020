# XGet a list of all gyms - self.all
# XGet a list of all memberships at a specific gym - gym_membership
# XGet a list of all the lifters that have a membership to a specific gym - lifters_at_gym
# XGet a list of the names of all lifters that have a membership to that gym - lifters_at_gym_names
# XGet the combined lift total of every lifter has a membership to that gym - lift_total_for_gym

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

  def gym_membership #g1
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def lifters_at_gym
    gym_membership.map do |membership|
      membership.lifter
    end
  end

  def lifters_at_gym_names
    lifters_at_gym.map do |lifter|
      lifter.name
    end
  end

  def lift_total_for_gym
    total = 0
    lifters_at_gym.each do |lifter|
      total += lifter.lift_total
    end
    total
  end

end
