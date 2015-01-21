require './player.rb'
require './board.rb'
require './ship.rb'

class ComputerPlayer < Player
  def initialize
    super
    @computer_name = "HAL 9000"
    @computer_fleet = []
    @board = Board.new

  end

  def name
    return @computer_name
  end

  def ships
    @computer_fleet
  end


  def place_ships(hitpoints)
    puts "HAL 9000 has placed his ships.\n"
    # lengths.each do |l|
    #   @computer_fleet << Ship.new(l)
    @computer_fleet = hitpoints.map {|hp| Ship.new(hp)}
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
