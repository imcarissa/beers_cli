class CLI 
  
  def menu
    puts "          Welcome To Brewdog's Beer Catalog"
    puts "_________________________________________________________"
    puts ""  
    puts "          Here is a list of our collection"
    puts ""
    puts ""
    API.get_beers
    print_beers
    puts ""
    prompt
    input = gets.strip
    while input != "exit" do
      if input.to_i > 0 && input.to_i <= 24
        
      elsif input 
    end
  end


  def prompt
    puts ""
    puts "Enter a number from the list to learn more about it or type 'exit' to exit"
    puts ""
  end

  def print_beers
    Beer.all.each.with_index(1) do |beer, index|
      puts "#{index}. #{beer.name}"
    end
  end
  
end