class Beer
  
  attr_accessor :name, :abv, :tagline, :description, :food_pairing
  
  @@all = []
  
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
  
  # def self.sort
  #  self.all.sort_by { |beer| beer.name }
  # end
	
end