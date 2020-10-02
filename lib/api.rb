class API 
  
  def self.get_beers
    url = "https://api.punkapi.com/v2/beers"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    
    beers = JSON.parse(response)
    beers.each do |b|
    binding.pry
      Beer.new(name: b[], abv_gt: b[], food: b[]) if b[] != nil
    end
  end
  
#  def self.get_beers(beer)
#   url = "https://api.punkapi.com/v2/beers?#{food}"
#    uri = URI(url)
#    response = Net::HTTP.get(uri)
#    beer_info = JSON.parse(response)["beers"]
#  end
  
end