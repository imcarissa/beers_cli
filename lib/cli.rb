class CLI 
  
  def menu
    puts "____~*~__________________~*~_____________________~*~____"
    puts ""
    puts "                Beer and Food Pairing"
    puts "              With the Brewdog Catalog"
    puts "____~*~__________________________________________~*~____"
    puts ""  
    puts "  Enter a number from the selection below to find out more or 'exit' to exit"
    puts ""
    @input = gets.strip.downcase
    API.get_beers(@input)
    print_beers
    prompt
    input = ""
      while input != "exit" do
        if input.to_i > 0 && input.to_i <= Beer.all.length
          puts Beer.all[input.to_i-1].name
          puts Beer.all[input.to_i-1].abv
          puts Beer.all[input.to_i-1].tagline
          puts Beer.all[input.to_i-1].description
          puts Beer.all[input.to_i-1].food_pairing
          puts ""
        elsif
          puts "          Go home buddy, you're drunk."
        end
      end
    end
  end

    def prompt
      puts ""
      puts "Type in a number from our list or type 'exit' to exit"
      puts ""
    end

  def print_beers
    Beer.all.each.with_index(1) do |beer, index|
      puts "#{index}. #{beer.name}"
    end
  end
end