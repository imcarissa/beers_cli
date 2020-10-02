class API 
  
  def self.get_beers
    url = "https://api.punkapi.com/v2/beers"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    
    beers = JSON.parse(response)
    beers.each do |b|
      Beer.new(name: b["name"], abv: b["abv"], tagline: b["tagline"], description: b["description"], food: b["food"]) if b["name"] != ""
    end
  end
  
  def self.get_info(beer)
    url = "https://api.punkapi.com/v2/beers?#{name}"
  end
end