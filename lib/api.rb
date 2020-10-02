class API 
  
  def self.get_beers(abv_8)
    url = "https://api.punkapi.com/v2/beers?abv_gt=8"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    
    beers = JSON.parse(response)
    binding.pry
  end
  
end