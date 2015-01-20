def get_user_input
  gets.chomp
end
class Game
  def initialize(player1,player2, default_lengths=[2, 3, 3, 4, 5])
    @player1=player1
    @player2=player2
    @default_lengths=default_lengths
    @turn= 1
  end

  def play
    self.welcome
    self.place_ships
    until @player1.board.sunk? || @player2.board.sunk?
      self.take_turn
    end
    if @player1.board.sunk?
      puts "Sorry! You lost :("
    else @player2.board.sunk?
      puts "Congratulations, #{@player1.name}! You won!"
    end
  end

  def welcome
    puts "Welcome, #{@player1.name} and #{@player2.name}!\nIt's time to play Battleship.\n"
  end

  def place_ships
    @player1.place_ships(@default_lengths)
    @player2.place_ships(@default_lengths)
  end

  def take_turn
    if @turn.odd?
      coordinates = @player1.turn
      if @player2.board.fire_at(coordinates[0], coordinates[1])
        puts "Hit!"
        @player1.shots_hit = @player2.board.hits
      else
        puts "Miss!"
        @player1.shots_missed = @player2.board.misses
      end
    else
      coordinates= @player2.turn
      if @player1.board.fire_at(coordinates[0], coordinates[1])
        puts "Hit!"
        @player2.shots_hit = @player1.board.hits
      else
        puts "Miss!"
        @player2.shots_missed = @player1.board.misses
      end
    end
    @turn += 1
  end


end
