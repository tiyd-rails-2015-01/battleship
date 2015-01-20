require './board.rb'
require './ship.rb'

def get_user_imput
  gets.chomp
end

class Player
  attor
  def initialize
  end


  def name
    return @name
  end

  def board
    return Board.new
  end



  #def place_ships(ship1, ship2, ship3, ship4, ship5)
  #end

end


class HumanPlayer < Player
  def initialize (player_name = "Dave")
    @name = player_name
  end


  def name
    return @name
  end
end

class ComputerPlayer < Player
  def initialize
    @computer_fleet = []
    @computer_name ="HAL 9000"
  end
  def name
    return @computer_name
  end

  def ships(given_index = 4)
    index2 = given_index
    return index2
  end

  def length(index)
    return @computerfleet[index]
  end

  #def ships(index=-1)
  #  output = index
  #  return output
  #  end

  def place_ships(ship)
    @computer_fleet << ship
    print "HAL 9000 has placed his ships.\n"
    return ship.length
  end


end
