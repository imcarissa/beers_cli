class CLI 
  
  def menu
    puts ""
    puts "               View The Brewdog Catalog"
    puts "_________________________________________________________"
    puts ""  
    puts "            Below is our entire collection."
    puts "" 
    API.get_beers
#    binding.pry
    print_beers
    puts ""
    puts ""
    input = ""
    while input != "exit" do
      puts "1) Type in beer index number to view more information about the beer"
      puts "2) Or type 'exit' to leave program and start over"
      puts ""
      input = gets.strip
      puts Beer.all.name
      puts Beer.all.abv
      puts Beer.all.tagline
      puts Beer.all.description
      puts Beer.all.food
  end
end
 
#  binding.pry
  def print_beers
    Beer.all.each.with_index(1) do |beer, index|
      puts "#{index}. #{beer.name}"
    end
    puts ""
  end
end