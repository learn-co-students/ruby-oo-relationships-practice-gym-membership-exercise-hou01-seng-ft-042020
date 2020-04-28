
# Deliverables:
# Get a list of all gyms

# Get a list of all memberships at a specific gym

# Get a list of all the lifters that have a membership to a specific gym

# Get a list of the names of all lifters that have a membership to that gym
# Get the combined lift total of every lifter that has a membership to that gym


class Gym
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    self.class.all << self 
  end

  def self.all
    @@all
  end 

  def memberships
    Membership.all.select do |membership|
      membership.gym == self
    end 
  end 

  def our_lifters
    memberships.select do |membership|
      membership.lifter 
    end 
  end 

  def our_lifters_names
    our_lifters.map do |lifter_membership|
      lifter_membership.lifter.name
    end 
  end 

  def our_lift_total
    sum = 0
    our_lifters.map do |membership|
        sum += membership.lifter.lift_total
      end
    sum
  end 
end
