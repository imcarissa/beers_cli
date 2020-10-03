class CLI 
  
  def menu
    puts "             Welcome Brewdog's Beer Catalog"
    puts "_________________________________________________________"
    puts ""  
    puts "      Below is a collection available for perusing"
    API.get_beers
    print_beers
    puts ""
    prompt
    input = gets.strip
    while input != "exit" do
      if input.to_i > 0 && input.to_i <= Beer.find_by_name(input).count
        
      elsif input 
    end
  end


  def prompt
    puts ""
    puts "Enter a number from the list to learn more about it or type 'exit' to exit"
    puts ""
  end

  def print_beers
    Beer.find_by_name(input).each.with_index(1) do |beer, index|
      puts "#{index}. #{beer.name}"
    end
    puts ""
  end
end
    