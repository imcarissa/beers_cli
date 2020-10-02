class Beer
  
  attr_accessor :name, :abv_gt, :food
  
  @@all = []
  
  def initialize(name:, abv_gt:, food:)
    @name = name
    @abv_gt = abv_gt
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