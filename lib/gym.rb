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
    #get a list of all memberships at a specific gym
    Membership.all.select {|member| member.gym == self}
  
  end

  def all_lifters
    #get a list of all the lifters that have a membership to a specific gym
    all_memberships.map {|member| member.lifter}
  end

  def lifters_here
    #get a list of the names of all lifters that have a membership to that gym
    # Membership.all.select {|member| member.gym == self}
    all_lifters.map {|lifter| lifter.name}

  end

  def lifter_totals
    #get the combined life total of evert lifter that has a membership to that gym
    total = 0
    all_lifters.map {|lift| total += lift.lift_total}
    return total
  end

end
