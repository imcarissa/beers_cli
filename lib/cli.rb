class CLI 
  
  def menu
    puts "   ____~*~____________~*~____________~*~____"
    puts ""
    puts "Beer and Food Pairing With the Brewdog Catalog"
    puts "   ____~*~___________________________~*~____"
    puts "" 
    API.get_beers
    print_beers
    puts ""
    puts "  Enter a number from the selection to find out more"
    puts "  Or type 'exit' to exit"
    puts ""
    input = gets.strip.downcase
      while input != "exit"
        if input.to_i > 0 && input.to_i <= Beer.all.length
          puts Beer.all[input.to_i-1].name
        elsif
          puts "  Go home buddy, you're drunk."
        end
      end
    end
  end


  def print_beers
    Beer.all.each.with_index(1) do |beer, index|
      puts "#{index}. #{beer.name}"
    end
  end

end




 #  puts Beer.all[input.to_i-1].name
       #   puts Beer.all[input.to_i-1].abv
       #   puts Beer.all[input.to_i-1].tagline
       #   puts Beer.all[input.to_i-1].description
       #   puts Beer.all[input.to_i-1].food_pairing
       #   puts ""