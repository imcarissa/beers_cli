class Beer
  
  attr_accessor :name, :abv, :style, :food
  
  @@all = []
  
  def initialize(name:, abv:, style: food:)
    @name = name
    @abv = abv
    @style = style
    @food = food
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.find_by_abv(abv)
    self.all.select { |percent| percent.abv == abv }
  end
  
end