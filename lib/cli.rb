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
    input = gets.strip.downcase
    while input != "exit" do
        if input.to_i > 0 && input.to_i <= Beer.all.length
          beer = Beer.all[input.to_i-1]
          print_beer_info(beer)
          prompt
        elsif input == "beer me"
            print_beers
            prompt
        elsif input == "exit"
            puts "Go home buddy, you're drunk."
        else
          puts ""
          puts "  Did not get that.. type 'beer me' to see the list or try another number."
          puts ""
        end
          input = gets.strip.downcase
    end
  end
  

  def prompt
    puts ""
    puts "  Enter another number to learn about it!"
    puts "  Type 'beer me' to see the selection again,"
    puts "  ...................or type 'exit' to exit."
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
    puts "Description:"
    puts "#{beer.description}"
    puts ""
    puts "Suggested Food Pairing:"
    puts "#{beer.food_pairing}"
  end
  
end