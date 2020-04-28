class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all 
  end
  
  def all_memberships
    #get a list of all the memberships that a specific lifter has
    Membership.all.select {|member| member.lifter == self}
  end

  def all_gyms
    #get a list of all the gyms that a specific lifter has a membership to
    all_memberships.map {|member| member.gym}
  end

  def all_gyms_name # ** I added **
    #list all gyms by name
    all_gyms.map {|gym| gym.name}
  end

  def total_cost
    #get a total cost of a specific lifter's gym memberships
    total = 0
    all_memberships.map {|member| total += member.cost}
    return total
  end

  def sign_up(cost, gym)
    #given a gym and a membership cost, sign a specific lifter up for a new gym
    # l3, g1
    Membership.new(cost, gym, self)
  end

end
