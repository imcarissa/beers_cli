class Beer
  
  attr_accessor :name, :abv, :description, :food_pairing
  
  @@all = []
  
  def initialize
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end