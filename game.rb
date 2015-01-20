class Game
  def initialize(human, computer = ComputerPlayer.new, default = [2,3,3,4,5])
    @human = human
    @computer = computer
    @default = default
  end

  def welcome
    print "Welcome, #{@human.name} and HAL 9000!\nIt's time to play Battleship.\n"
  end

  def place_ships
    @human.place_ships(@default)
    @computer.place_ships(@default)
  end
end
