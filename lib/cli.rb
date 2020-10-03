class CLI 
  
  def menu
    puts " ======================================================="
    puts "____~*~__________________~*~_____________________~*~____"
    puts ""
    puts "                Beer and Food Pairing"
    puts "              With the Brewdog Catalog"
    puts "____~*~__________________________________________~*~____"
    puts ""
    puts "========================================================"
    puts ""  
    puts "  Get to know our selection complete with food pairings"
    puts ""
    puts ""
    API.get_beers
    print_beers
    input = ""
    while input != "exit" do
      puts ""
      puts "Start again and put a number from our list or type 'exit' to exit"
      puts ""
      input = gets.strip
        if input.to_i > 0 && input.to_i <= 25
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


  def print_beers
    Beer.all.each.with_index(1) do |beer, index|
      puts "#{index}. #{beer.name}"
    end
    puts ""
  end
end