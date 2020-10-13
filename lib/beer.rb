# the model class that makes the objects

class Beer
  
  attr_accessor :name, :abv, :tagline, :description, :food_pairing
  
  @@all = []
  
# keywords with abstract values
  def initialize(name:, abv:, tagline:, description:, food_pairing:)
    @name = name
    @abv = abv
    @tagline = tagline
    @description = description
    @food_pairing = food_pairing
    @@all << self
  end
  
  def self.all
    @@all
  end
	
end