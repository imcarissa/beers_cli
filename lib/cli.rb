class CLI 
  
  def menu
    puts "                        Craft Beer Collection"
    puts "                  __________________________________"
    puts "" 
    puts "          "
    @abv = gets.strip.downcase
    API.get_beers(@abv)
    beers = Beer.all 
    beers.each.with_index(1) do |b, x|
      puts "#{x}. #{b.name}"
    end
  end
  
end