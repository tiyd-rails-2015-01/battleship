def get_user_input
  gets.chomp
end

class Game
  def initialize(human, computer, default_ships = [2,3,3,4,5])
    @human = human
    @computer = computer
    @default_ships = default_ships
    @turn_counter = 0
  end

  #not sure why the game requires players test isnt passing. @human and @computer are required to initialize the game


  def welcome
    puts "Welcome, #{@human.name} and #{@computer.name}!\nIt's time to play Battleship.\n"
  end

  def play
    self.welcome
    self.place_ships
    unless @human.board.sunk? || @computer.board.sunk?
      self.take_turn
    end
    if @human.board.sunk?
      puts "MWAHAHAHA"
    else
      puts "Congratulations, #{@human.name}! you beat #{@computer.name}!"+"You are not the worst in the world!"
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
        puts "BOOM! Hit!"
        @human.shots_hit = @computer.board.hits
      else
        puts "Terrible shot. Miss!"
        @human.shots_missed = @computer.board.misses
      end
    else
      coords = @computer.turn
      if @human.board.fire_at(coords[0], coords[1])
        puts "Boom! Hit!"
        @computer.shots_hit = @human.board.hits
      else
        puts "Terrible shot. Miss!"
        @computer.shots_missed = @human.board.misses
      end
    end
    @turn_counter += 1
  end
end
