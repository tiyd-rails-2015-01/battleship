
def get_user_input
  gets.chomp
end

require './board.rb'
require './ship.rb'

class Player

  attr_reader :board

  def initialize
    @board = Board.new
  end

  def name
    return @name
  end

  def board
    return Board.new
  end

end

class HumanPlayer < Player
  attr_accessor :name

  def initialize(player_name = "Dave")
    @board = Board.new
    @name = player_name
  end

  def name
    return @name
  end
end

class ComputerPlayer < Player
  def initialize
    super
    @computer_name = "HAL 9000"
    @computer_fleet = []
  end

  def name
    return @computer_name
  end

  def ships
    board.fleet
  end


  def place_ships(lengths)
    puts "HAL 9000 has placed his ships.\n"
    lengths.each do |l|
      @computer_fleet << Ship.new(l)
    end
  end

  # def place_ship(l)
  #   x = rand(1..10)
  #   y = rand(1..10)
  #   horiz = [true, false].sample
  #   new_ship = Ship.new(l)
  #   ship_placed = new_ship.place(x, y, horiz)
  #   if ship_placed == true
  #     board.fleet << new_ship
  #   end
  #   ship_placed
  # end
  #
end
