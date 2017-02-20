class Hero
  attr_accessor :name, :power, :bio
  HEROES = []

  def initialize(hash)
    @name = hash[:name]
    @power = hash[:power]
    @bio = hash[:bio]
    HEROES << self
  end

  def self.all
    HEROES
  end

end
