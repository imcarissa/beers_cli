class Beer
  
  attr_accessor :name, :abv, :description, :food_pairing
  
  @@all = []
  
  def initialize(name:, abv:, description:, food_pairing:)
    @name = name
    @abv = abv
    @description = description
    @food_pairing = food_pairing
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end