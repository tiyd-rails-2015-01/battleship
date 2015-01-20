class Player
  attr_accessor :ships, :name, :board, :shots_hit, :shots_missed

  def initialize(name)
    @name = name
    @board = Board.new
    @shots_missed = []
    @shots_hit = []
    @ships = []
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
    coordinates = get_user_input
    x = self.board.x_of(coordinates)
    y = self.board.y_of(coordinates)
    return [x, y]
  end


end
