class CLI 
  
  def menu
    puts "                        Craft Beer Collection"
    puts "                  __________________________________"
    puts "" 
    puts "          "
    @abv_8 = gets.strip.downcase
    API.get_beers(@abv_8)
  end
  
end