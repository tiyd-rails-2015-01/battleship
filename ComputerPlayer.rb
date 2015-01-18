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
    puts "#{@name} has placed his ships.\n"
    return true
  end

end
