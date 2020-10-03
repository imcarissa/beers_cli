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
      puts "Or type 'exit' to leave program and start over"
      puts ""
    end
  end

  def print_beers
    Beer.all.each.with_index(1) do |beer, index|
      puts "#{index}. #{beer.name}"
    end
    puts ""
  end
end
    