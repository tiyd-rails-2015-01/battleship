

class Game
  def initialize(human, computer, ships=[2, 3, 3, 4, 5])
    @human = human
    @computer = computer
    @ships = ships
  end
  def welcome
    puts "Welcome, #{@human.name} and #{@computer.name}!\nIt's time to play Battleship."
  end
  def place_ships
    @human.place_ships(@ships)
    @computer.place_ships(@ships)
  end
end
