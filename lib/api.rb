class API 
  
  def self.get_beers(abv)
    url = "https://api.punkapi.com/v2/beers?#{abv}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    
    beers = JSON.parse(response)["beers"].each do |b|
      Beer.new(name: b[], abv: b[], food_pairing: food_pairing) if b[] != nil
    end
  end
  
  def self.get_beers(beer)
    url = "https://api.punkapi.com/v2/beers?#{food_pairing}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    beer_info = JSON.parse(response)["beers"]
  end
  
end