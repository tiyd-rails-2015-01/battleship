
class Player
  attr_accessor :ships, :name, :board, :shots_hit, :shots_missed

  def initialize(name)
    @name = name
    @board = Board.new
    @ships = []
    @shots_hit = []
    @shots_missed = []
  end

  def create_ships(ship_lengths)
    if @ships.empty?
      ship_lengths.each do |l|
        @ships << Ship.new(l)
      end
    end
  end
  def turn
    puts "Where would you like to fire #{@name}"
    coords = get_user_input
    column = self.board.x_of(coords)
    row = self.board.y_of(coords)
    return [column, row]
  end

end
