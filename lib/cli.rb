class CLI 
  
  def menu
    puts "____~*~__________________~*~_____________________~*~____"
    puts ""
    puts "                Beer and Food Pairing"
    puts "              With the Brewdog Catalog"
    puts "____~*~__________________________________________~*~____"
    puts ""  
    API.get_beers
    print_beers
    input = ""
    while input != "exit" do
    puts ""
    puts "  Enter a number from the selection to find out more"
    puts "  Or type 'exit' to exit"
    puts ""
    input = gets.strip.downcase
        if input.to_i > 0 && input.to_i <= Beer.all.length
          puts Beer.all[input.to_i-1].name
          puts Beer.all[input.to_i-1].abv
          puts Beer.all[input.to_i-1].tagline
          puts Beer.all[input.to_i-1].description
          puts Beer.all[input.to_i-1].food_pairing
          puts ""
        elsif
          puts "          Go home buddy, you're drunk."
        else
          "Bye!"
        end
      end
  end


  def print_beers
    Beer.all.each.with_index(1) do |beer, index|
      puts "#{index}. #{beer.name}"
    end
  end
end