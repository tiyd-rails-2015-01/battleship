class Player
  attr_accessor :ships, :name, :board

  def initialize(name)
    @name = name
    @board = Board.new
    @ships = []
  end

  def create_ships(ship_lengths)
    if @ships.empty?
      ship_lengths.each do |l|
        @ships << Ship.new(l)
      end
    end
  end

end
