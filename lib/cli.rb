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
    puts ""
    puts "For your first round, enter a number from the list to learn more about it"
    puts ""
    input = gets.strip.downcase
    while input != "exit" do
        if input.to_i > 0 && input.to_i <= Beer.all.length
          beer = Beer.all[input.to_i-1]
          print_beer_info(beer)
        elsif input == "feed me"
          beer = Beer.all[input.to_i-1]
          print_food_pairings(@food_pairing)
        elsif input == "beer me"
          print_beers
          prompt
        elsif input == "one more round"
          prompt
        else
          puts ""
          puts "      (>,`')>  Go home buddy, you're drunk."
          puts ""
          puts "       Say 'one more round' to see options again."
          puts ""
        end
          input = gets.strip.downcase
    end
    puts ""
    puts "     Don't forget to tip your bartender!  $<('',<)"
    puts ""
    puts "     Thanks! Come use us again!"
    puts ""
  end
  
  
  def print_beers
    Beer.all.each.with_index(1) do |beer, index|
      puts "#{index}. #{beer.name}"
    end
  end
  
  def print_food_pairings(food_pairing)
    Beer.all.each.with_index(1) do |beer, index|
      puts "#{index}. #{beer.name}"
      puts "Food Pairing Suggestions............"
      puts "#{beer.food_pairing}"
      puts ""
    end
    prompt
  end

  
  def prompt
    puts ""
    puts "      - Type a number from the list to know more about a beer!"
    puts "      - Type 'feed me' to see only the food pairing suggestion list."
    puts "      - Type 'beer me' to see the list again."
    puts "      - ...........................Type 'exit' to close your tab."
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
    puts ""
    prompt
  end
  
end