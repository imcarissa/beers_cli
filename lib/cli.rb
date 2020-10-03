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
      input = gets.strip
      if input.to_i > 0 && input.to_i >= 24
        
      elsif input 
    end
  end


  def prompt
    puts "Enter a number from the list to learn more about it"
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
    