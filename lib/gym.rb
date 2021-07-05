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
    Membership.all.select do |m|
      m.gym == self
    end 
  end

  def lifters 
    self.memberships.map do |m|
      m.lifter
    end
  end

  def lifter_names
    self.lifters.map do |lifter|
      lifter.name
    end
  end
  
  def lift_total 
    self.lifters.inject(0) do |sum, lifter|
      sum + lifter.lift_total
    end
  end

end
