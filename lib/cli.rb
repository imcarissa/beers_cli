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
    
# this is the executable to run the menu method on the object
# it uses the 2 gems in the API class to make the get request from the URL, then parses the string into a json object
# the parsed response return is iterated through each beer and creates the objects with attributes retquested from the API
    API.get_beers
    print_beers
    
# downcase idiot-proofs the input so the program doesnt error out based on capitalization mistakes on the user's part
    input = gets.strip.downcase
    while input != "exit" do
      
# if input is an integer great than 0, and less than or equal to the length of the list of beers
        if input.to_i > 0 && input.to_i <= Beer.all.length
          beer = Beer.all[input.to_i-1]
          print_beer_info(beer)
        elsif input == "beer me"
            print_beers
        else
            puts ""
            puts "   (>,`')>  Go home buddy, you're drunk."
            prompt
        end
          input = gets.strip.downcase
    end
    puts ""
    puts "     Don't forget to tip your bartender!  $<('',<)"
    puts ""
  end
  
  
  def print_beers
    Beer.all.each.with_index(1) do |beer, index|
      puts "#{index}. #{beer.name}"
    end
    prompt
  end

  
  def prompt
    puts ""
    puts "            - Try a number from the list!"
    puts "            - See the list again? Type 'beer me'."
    puts "            - Type 'exit' to close your tab."
    puts ""
  end
  
# next level of the CLI. A second method displaying the information of a beer index from the user's input
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