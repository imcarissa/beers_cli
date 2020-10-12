class CLI 
  
  def menu
    puts ""
    puts "*|**********************************************|*"
    puts "*|*____~*~_____________~*~______________~*~____*|*"
    puts "*|*                                            *|*"
    puts "*|*   You are Viewing Brewdog's Beer Catalog   *|*"
    puts "*|*                                            *|*"
    puts "*|*       (>,'')>    <('.')>    <('',<)        *|*"
    puts "*|*                                            *|*"
    puts "*|*___________~*~_______________~*~____________*|*"
    puts "*|*                                            *|*"
    puts "*|**********************************************|*"
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
        else
            puts ""
            puts "   (>,`')>  Go home buddy, you're drunk. Try a number from the list!"
            puts ""
            puts "            - See the list again? Type 'beer me'."
            puts "            - Type 'exit' to close your tab."
            puts ""
        end
          input = gets.strip.downcase
    end
    puts ""
    puts "  Don't forget to tip your bartender!  $<('',<)"
    puts ""
  end
  
  def print_beers
    Beer.all.each.with_index(1) do |beer, index|
      puts "#{index}. #{beer.name}"
    end
  end

  def prompt
    puts ""
    puts "          Enter a number from this list to learn more about a beer."
    puts "          ..................................or type 'exit' to exit."
    puts ""
    puts "          Type 'beer me' to see the selection again."
    puts ""
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