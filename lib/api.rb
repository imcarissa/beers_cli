class API 
  
  def self.get_beers
    url = "https://api.punkapi.com/v2/beers"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    
    beers = JSON.parse(response)
    beers.each do |b|
      Beer.new(name: b["name"], abv: b["abv"], tagline: b["tagline"], description: b["description"], food_pairing: b["food_pairing"]) if b["name"] != ""
    end
  end
  
  def self.get_beer_info(info)
    url = "https://api.punkapi.com/v2/beers/#{beer.index}"
    response = Net::HTTP.get(uri)
    beer_info = JSON.parse(response)
    
    beer.name = beer_info["name"]
    beer.abv = beer_info["abv"]
    beer.tagline = beer_info["tagline"]
    beer.description = beer_info["description"]
    beer.food_pairing = beer_info["food_pairing"]
  end
end