require './Player.rb'


class ComputerPlayer < Player
  # attr_accessor :board, :name
  # def initialize
  #   @name = "HAL 9000"
  #   @board = Board.new
  #   @ships = []
  # end

  def initialize
    super("HAL 9000")
  end

  def place_ships(ship_lengths)
    self.create_ships(ship_lengths)
    @ships.each do |ship|
      until ship.placed
        #puts "#{@name}, where would you like to place a ship of length #{ship.length}?"
        column = rand(1..10)
        row = rand(1..10)
        #puts "Across or Down?" #Across is true
        a_or_d = [true, false].sample
        board.place_ship(ship, column, row, a_or_d, true)
      end
    end
    puts "#{@name} has placed his ships.\n"
    return true
  end

  def turn
    column = rand(1..10)
    row = rand(1..10)
    return [column, row]
  end
end
