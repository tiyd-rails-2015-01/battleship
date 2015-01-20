require'./player'

class ComputerPlayer<Player
  def initialize
    @board = Board.new
    @comp_name = "HAL 9000"
  end

  def name
    @comp_name
  end

  def create_ships(ships_length)
    if @player_ship == []
      ships_length.each do |get_length|
        @player_ships << Ship.new(get_length)
      end
    end
  end

  def place_ships(ships_length)
    self.create_ships(ships_length)
    puts "#{@comp_name} has placed his ships.\n"
    return true
  end

  def length

  end
end
