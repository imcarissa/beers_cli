class API 
  
  def self.get_beers
    url = "https://api.punkapi.com/v2/beers"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    
    beers = JSON.parse(response)
    beers.each do |b|
      Beer.new(name: b["name"], abv: b["abv"], style: b["style"], food: b["food"]) if b["name"] != ""
    end
  #  binding.pry
  end
  
#  def self.get_beers(beer)
#   url = "https://api.punkapi.com/v2/beers?#{food}"
#    uri = URI(url)
#    response = Net::HTTP.get(uri)
#    beer_info = JSON.parse(response)["beers"]
#  end
  
end