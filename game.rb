def get_user_input
  gets.chomp
end

class Game
  def initialize(human, computer, default_ships = [2,3,3,4,5])
    @human = human
    @computer = computer
    @default_ships = default_ships
  end
  def welcome
    puts "Welcome, #{@human.name} and #{@computer.name}!\nIt's time to play Battleship.\n"
  end
  def play
    #all the code it plays
  end
  def place_ships
      @human.place_ships(@default_ships)
      @computer.place_ships(@default_ships)
  end
end

#if @ships.empty?
#  @ships.each do |s|
#    puts "#{@human.name}, where would you like to place a ship of length #{@s.length}?"
#    coords = get_user_input
#  end
#end
