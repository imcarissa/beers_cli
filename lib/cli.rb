class CLI 
  
  def menu
    puts "             Welcome Brewdog's Beer Catalog"
    puts "_________________________________________________________"
    puts ""  
    puts "      Below is a collection available for perusing"
    API.get_beers
    print_beers
    puts ""
    input = ""
    while input != "exit" do
      puts "Enter a number from the list to learn more about it"
      puts "Type 'list' to see the list again"
      puts "Or type 'exit' to leave program and start over"
      puts ""
      prompt
      if input == input.to_i > 0 && input.to_i <= 24
      
    else
        puts "Please enter a number from the list"
      end
    end
  end

  def prompt
    puts "Enter a number from the list to learn more about it"
      puts "Type 'list' to see the list again"
      puts "Or type 'exit' to leave program and start over"
      puts ""
 end

  def print_beers
    Beer.all.each.with_index(1) do |beer, index|
      puts "#{index}. #{beer.name}"
    end
    puts ""
  end
end

  def beer_details(info)
    puts "Name: #{info.name}"
    puts "ABV: #{info.abv}"
    puts "Tagline: #{info.tagline}"
    puts "Description: #{info.description}"
    puts "Food Pairing: #{info.food_pairing}"
  end
  
end
    
    