def get_user_input
  gets.chomp
end

require './board.rb'

class Player
  def initialize
  end

  def name
    return @name
  end

  def board
    return Board.new
  end
end

class HumanPlayer < Player
  def initialize(player_name = "Dave")
    @name = player_name
  end

  def name
    return @name
  end

end

class ComputerPlayer < Player
  def initialize
    @computer_name = "HAL 9000"
  end
  def name
    return @computer_name
  end
end
