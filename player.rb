require './board'

class Player


  def board
    Board.new
  end

  def ships
    @ships
  end

  def turn
    puts "Where would you like to fire #{@name}"
    coordinates = get_user_input
    x = self.board.x_of(coordinates)
    y = self.board.y_of(coordinates)
    return [x, y]
  end

end
