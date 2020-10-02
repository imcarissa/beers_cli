class CLI 
  
  def menu
    puts ""
    puts "What to Eat With What To Drink from Brewdog's Catalog"
    puts "_________________________________________________________"
    puts ""  
    puts ""
    puts "Below is our entire collection."
    puts "" 
    input = ""
    while input != "exit" do
      puts "Type in beer index number to view more information about the beer"
      puts "Or input a type of food (ex: eggs, spicy) to view beer pairings"
      puts ""
      input = gets.strip
    API.get_beers
    print_beers
  end
end
 
#  binding.pry
  def print_beers
    Beer.all.each.with_index(1) do |beer, index|
      puts "#{index}. #{beer.name}"
    end
  end
end