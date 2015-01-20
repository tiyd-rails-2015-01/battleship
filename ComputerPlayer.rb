require './Player.rb'


class ComputerPlayer < Player

  def initialize
    super("HAL 9000")
  end

  def place_ships(ship_lengths)
    self.create_ships(ship_lengths)
    @ships.each do |ship|
      until ship.placed
        column = rand(1..10)
        row = rand(1..10)
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
