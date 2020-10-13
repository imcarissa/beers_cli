# the service class
class API 
  
  def self.get_beers
    url = "https://api.punkapi.com/v2/beers"
    uri = URI(url)

# httparty gem makes the get request to the URL
# the returned string is the response
# response is then parsed by json gem
    response = Net::HTTP.get(uri) 
    beers = JSON.parse(response)
    
# iteration through the elements returned
    beers.each do |b| 

# instantiates a new beer object and assigns the appropriate instance variables
      Beer.new(name: b["name"], abv: b["abv"], tagline: b["tagline"], description: b["description"], food_pairing: b["food_pairing"]) if b["name"] != ""
    end 
  end
 
end