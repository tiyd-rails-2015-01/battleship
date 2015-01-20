require './player'
require './board'

def get_user_input
  gets.chomp
end

class HumanPlayer < Player
  def initialize(name = "Dave")
    @name = name
    @ships = []
    @board = Board.new
    @shots_missed = []
    @shots_hit = []
  end

  def shots_missed
    @shots_mised
  end

  def shots_hit
    @shots_hit
  end

  def name
    @name
  end

  def board
    @board
  end

  def place_ships(lengths)
    self.create_ships(lengths)
    @ships.each do |length|
      if length.placed == false
        puts "#{name}, where would you like to place a ship of length #{length.length}?"
        coordinates = get_user_input
        column = board.x_of(coordinates)
        row = board.y_of(coordinates)
        puts "Across or Down?"
        position = get_user_input
        if position == "Down"
          position = false
        else
          position = true
        end
        board.place_ship(length, column, row, position)
        coordinates = ""
        position = ""
      end
    end
  end

  def create_ships(lengths)
    if @ships.empty?
      lengths.each do |length|
        @ships << Ship.new(length)
      end
    end
  end




end
