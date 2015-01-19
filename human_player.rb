def get_user_input
  gets.chomp
end


class HumanPlayer <Player
  def initialize(name = "Dave")
    super(name)
  end


  def place_ships(ship_lengths)
    self.create_ships(ship_lengths)
    @ships.each do |ship|
      until ship.placed
        puts "#{@name}, where would you like to place a ship of length #{ship.length}?"
        coordinates = get_user_input
        x = @board.x_of(coordinates)
        y = @board.y_of(coordinates)
        puts "Across or Down?"
        orientation = get_user_input
        if orientation == "Across"
          across = true
        else
          across = false
        end
        board.place_ship(ship, x, y, across)
        coordinates = ""
        across = ""
        # if self.ships[ship(ship_lengths)].overlaps_with?
        #   puts "Unfortunately, that ship overlaps with one of your other ships.  Please try again."
        # end
      end
    end
  end

  def display_hits
    letters = ["A","B","C","D","E","F","G","H","I","J"]
    self.board.display_header
    (1..10).each do |y|
      output_row = "#{letters[y-1]} |"
      (1..10).each do |x|
        if @shots_hit.include?([x,y])
          output_row += " + |"
        elsif @shots_missed.include?([x,y])
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
    puts "\n"
    self.board.display
  end



end
