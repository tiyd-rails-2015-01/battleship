class Game
  def initialize(human, computer)
    @human = HumanPlayer.new
    @computer = ComputerPlayer.new
  end
end
