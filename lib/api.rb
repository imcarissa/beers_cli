class API 
  
  def self.get_beers
    url = "https://api.punkapi.com/v2/beers"
    uri = URI(url)
    response = Net::HTTP.get(uri) # making the get resquest to the server, and we get back a string
                                  # parsing response string into a readable json object
    beers = JSON.parse(response)
    beers.each do |b| # iterates through an object array
      Beer.new(name: b["name"], abv: b["abv"], tagline: b["tagline"], description: b["description"], food_pairing: b["food_pairing"]) if b["name"] != ""
        # instantiates a new beer object and assigns the appropriate object variables
    end 
  end
 
end