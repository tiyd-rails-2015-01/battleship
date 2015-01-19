require './player'
require './ship'

def get_user_input
  gets.chomp
end

class HumanPlayer < Player

  def initialize(name = "Dave")
    super(name)
  end

  def place_ships(ship_lengths)
    self.create_ships(ship_lengths)
    @ships.each do |ship|
      until ship.placed
        puts "#{@name}, where would you like to place a ship of length #{ship.length}?"
        coords = get_user_input
        x = @board.x_of(coords)
        y = @board.y_of(coords)
        puts "Across or Down?"
        a_or_d = get_user_input
        if a_or_d == "Down"
          a_or_d = false
        else
          a_or_d = true
        end
        board.place_ship(ship, x, y, a_or_d)
        coords = ""
        a_or_d = ""
      end
    end
  end

  def display_hits
    letters = ["A","B","C","D","E","F","G","H","I","J"]
    self.board.display_header
    (1..10).each do |y|
      output_row = "#{letters[y-1]} |"
      (1..10).each do |x|
        #puts "#{@hits}"
        if @shots_hit.include?([x, y])
          output_row += " + |"
        elsif @shots_missed.include?([x, y])
          output_row += " - |"
        else
          output_row += "   |"
        end
      end
      puts output_row
    end

    self.board.display_bottom
  end

  def display_game_status
    self.display_hits
    puts ""
    self.board.display
  end

end

# may try to change ships to fleet to avoid problems
