class Beer
  
  attr_accessor :name, :abv, :tagline, :description, :food
  
  @@all = []
  
  def initialize(name:, abv:, tagline:, description:, food:)
    @name = name
    @abv = abv
    @tagline = tagline
    @description = description
    @food = food
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.find_by_name(name)
    self.all.select { |b| b.name == name }
  end
  
end