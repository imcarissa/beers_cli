class CLI 
  
  def menu
    puts "         Craft Beer Collection & Food Pairing"
    puts "          ___________________________________"
    
    puts ""
    #puts "Enter the minimum ABV percentage of a beer you're looking for, and or a type of food you'd like your beer paired with, or type 'exit' to exit and start again"
   # input = gets.index.to_i
    API.get_beers
    print_beers
  end
 
  
  def print_beers
    Beer.all.each.with_index(1) do |b, integer|
      puts "#{integer}. #{b.name}"
    end
  end
end