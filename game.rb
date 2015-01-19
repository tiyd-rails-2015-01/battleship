class Game

  def initialize(human = HumanPlayer.new, computer = ComputerPlayer.new, coordinates)
    @human = human
    @computer = computer
  end

  def welcome
    puts"Welcome, #{@human.name} and #{@computer.name}!"
    puts "It's time to play Battleship."
  end

  def place_ships

  end



end
