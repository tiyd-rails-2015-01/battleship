def get_user_input
  gets.chomp
end

class Game
  def initialize(human , computer = ComputerPlayer.new, default_ships = [2,3,3,4,5]) #= HumanPlayer.new
    @human = human
    @computer = computer
    @default_ships = default_ships
    @turn_counter = 0
  end
  def welcome
    puts "Welcome, #{@human.name} and #{@computer.name}!\nIt's time to play Battleship.\n"
  end

  def play
    self.welcome
    self.place_ships
    until @human.board.sunk? || @computer.board.sunk?

      self.take_turn
    end
    if @human.board.sunk?
      puts "HAHAHEHAHAHHHAHAHAHAHAHAHAHHAHAHAHAHA"
    else
      puts "Congratulations, #{@human.name}! you beat #{@computer.name}!"+
      "They should probably be less bad."
    end
  end

  def place_ships
      @human.place_ships(@default_ships)
      @computer.place_ships(@default_ships)
  end

  def take_turn
    if @turn_counter.even?
      coords = @human.turn
      if @computer.board.fire_at(coords[0], coords[1])
        puts "#{@human.name}, That's a Hit!"
        @human.shots_hit = @computer.board.hits
      else
        puts "#{@human.name}, That's a Miss!"
        @human.shots_missed = @computer.board.misses
      end
      @human.display_hits
      @human.board.display
      #@computer.board.display < Checking to see if computer ships were being placed and could be hit.

    else
      coords = @computer.turn
      if @human.board.fire_at(coords[0], coords[1])
        puts "#{@computer.name}, That's a Hit!" #unless @computer.class == ComputerPlayer < breaks test, looks good
        @computer.shots_hit = @human.board.hits
      else
        puts "#{@computer.name}, That's a Miss!" #unless @computer.class == ComputerPlayer < breaks test looks good
        @computer.shots_missed = @human.board.misses
      end
    end
    @turn_counter += 1
  end

end
