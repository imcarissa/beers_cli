class CLI 
  
  def menu
    puts "   ____~*~____________~*~____________~*~____"
    puts ""
    puts "Beer and Food Pairing With the Brewdog Catalog"
    puts "   ____~*~___________________________~*~____"
    puts "" 
    API.get_beers
    print_beers
    prompt
    input = gets.strip
    while input != "exit" do
        if input.to_i > 0 && input.to_i <= Beer.all.length
          beer = Beer.all[input.to_i-1]
          print_beer_info(beer)
          prompt
        elsif input == "beer me"
            print_beers
            prompt
        else
          puts ""
          puts "  Go home buddy, you're drunk. Or try another number."
          puts ""
        end
          input = gets.strip
    end
  end
  

  def prompt
    puts ""
    puts "  Enter a number from the selection to find out more."
    puts "  Type 'beer me' to see the selection again,"
    puts "  ............................or type 'exit' to exit."
    puts ""
  end


  def print_beers
    Beer.all.each.with_index(1) do |beer, index|
      puts "#{index}. #{beer.name}"
    end
  end
  
  
  def print_beer_info(beer)
    puts "Name: #{beer.name}"
    puts ""
    puts "ABV: #{beer.abv}"
    puts ""
    puts "Tagline: ..........#{beer.tagline}.........."
    puts ""
    puts "Description: #{beer.description}"
    puts ""
    puts "Suggested Food Pairing: #{beer.food_pairing}"
  end
  
end