
# Deliverables:
# Get a list of all lifters
# Get a list of all the memberships that a specific lifter has
# Get a list of all the gyms that a specific lifter has memberships to
    # Get the average lift total of all lifters
      # Get the total cost of a specific lifter's gym memberships
      # Given a gym and a membership cost, sign a specific lifter up for a new gym

class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    self.class.all << self 
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |membership|
      membership.lifter == self 
    end 
  end 

  def gyms
    memberships.select do |membership|
      membership.gym
    end 
  end 

  def self.average_lift_total
    sum = 0 
    all.each do |lifter|
      sum += lifter.lift_total
    end
    (sum)/(all.size).to_f
  end 

  def total_costs
      sum = 0 
      memberships.map do |membership|
        sum += membership.cost
      end
      sum
  end 

  def sign_up(a_gym, membership_cost)
      Membership.new(a_gym, membership_cost, self)
  end 

end
