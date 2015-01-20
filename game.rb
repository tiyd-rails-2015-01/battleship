class Game

  def initialize(human, computer, default_ships = [2, 3, 3, 4, 5])
    @human = human
    @computer = computer
    @default_ships = default_ships
  end

  def welcome
    puts"Welcome, #{@human.name} and #{@computer.name}!"
    puts "It's time to play Battleship."
  end

  def place_ships
    @human.place_ships(@default_ships)
    @computer.place_ships(@default_ships)
  end

  def take_turn
  end




end
