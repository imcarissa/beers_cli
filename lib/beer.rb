class Beer
  
  attr_accessor :name, :abv, :description
  
  @@all = []
  
  def initialize(name:, abv:, description:)
    @name = name
    @abv = abv
    @description = description
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.find_by_abv(abv)
    self.all.select { |percent| percent.abv == abv }
  end
  
end