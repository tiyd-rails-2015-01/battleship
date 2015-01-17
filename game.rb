class Game

  def initialize( player1, player2, ship_sizes = [2,3,3,4,5])
    @player1 = player1
    @player2 = player2
    @ship_sizes = ship_sizes
  end

  def welcome
    puts "Welcome, #{@player1.name} and #{@player2.name}!\nIt's time to play Battleship.\n"
  end

  def place_ships
    @player1.place_ships(@ship_sizes)
    @player2.place_ships(@ship_sizes)
  end

  def take_turn
    puts "Miss!" #arbitrary
  end

  def play
    #arbitrary
  end

end
