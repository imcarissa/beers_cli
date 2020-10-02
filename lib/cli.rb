class CLI 
  
  def menu
    puts "              Craft Beer Collection"
    puts "        ___________________________________"
    puts ""
    puts "Type in the least ABV percentage you're looking for, a type of food you'd like your beer paired for, or type 'exit' to exit"
    @abv = gets.strip
    API.get_beers(@abv)
    print_beers
  end
 
  
  def print_beers
    Beer.all.each.with_index(1) do |b, x|
      puts "#{x}. #{b.name}"
  end
 end
end