class Beer
  
  attr_accessor :name, :abv, :food_pairing
  
  @@all = []
  
  def initialize(name:, abv:, food_pairing:)
    @name = name
    @abv = abv
    @food_pairing = food_pairing
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.find_by_abv(abv)
    self.all.select { |percent| percent.abv == abv }
  end
  
end