require './board.rb'

def get_user_input
  gets.chomp
end

class Player

  attr_reader :name
  attr_reader :board

  def initialize
    @name = "default"
    @board = Board.new
  end

  def place_ships( shipSizes )

    xy = 0 # arbitrary, fix later

    shipSizes.each do |size|
      ship = Ship.new(size)
      @board.place_ship( ship, xy, xy, true ) #arbitrary. fix later
      xy += 1 #arbitrary. fix later
    end

    puts "HAL 9000 has placed his ships.\n"
    return true #arbitrary. fix later
  end

  def ships
    return @board.ships
  end

  def display_game_status
    @board.display
  end

end

class HumanPlayer < Player
  def initialize( name = "Dave" )
    @name = name
    @board = Board.new
    @target_board = Board.new( true )
    # @target_board = Board.new
  end

  def place_ships( shipSizes )

    shipSizes.each do |size|
      shipHasBeenPlaced = false
      puts "#{@name}, where would you like to place a ship of length #{size}?"

      until( shipHasBeenPlaced )
        coord = get_user_input
        x = @board.x_of(coord)
        y = @board.y_of(coord)

        puts "Across or Down?"
        boolInput = get_user_input
        isHorizontal = boolInput.upcase.include?("ACROSS") #checks for "across", default to down

        ship = Ship.new(size)
        shipHasBeenPlaced = @board.place_ship( ship, x, y, isHorizontal )

        unless shipHasBeenPlaced
          puts "Unfortunately, that ship overlaps with one of your other ships.  Please try again."
        end
      end
    end

    return true #arbitrary. fix later
  end

  def display_game_status
    @target_board.display
    puts ""
    @board.display
  end
end

class ComputerPlayer < Player

  def initialize
    @name = "HAL 9000"
    @board = Board.new
    @target_board = Board.new( true )
  end
end
