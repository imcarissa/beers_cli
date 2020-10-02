class Beer
  
  attr_accessor :name, :abv, :tagline, :description
  
  @@all = []
  
  def initialize(name:, abv:, tagline:, description:)
    @name = name
    @abv = abv
    @tagline = tagline
    @description = description
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.find_by_name(input)
    self.all.select { |b| b.name == name }
  end
  
end