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
    puts "  Ever wanted to know what to eat with what you drink?"
    puts ""
    puts ""
    API.get_beers
    print_beers
    input = gets.strip.downcase
    while input != "exit" do
      puts ""
      puts " Enter a number of our beer catalog to find out more"
      puts ""
      input = ""
        if input.to_i > 0 && input.to_i <= Beer.all.length
          puts Beer.all[input.to_i-1].name
          puts Beer.all[input.to_i-1].abv
          puts Beer.all[input.to_i-1].tagline
          puts Beer.all[input.to_i-1].description
          puts Beer.all[input.to_i-1].food_pairing
          puts ""
        elsif
          puts "          Go home buddy, you're drunk."
        prompt
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
    puts ""
  end
end