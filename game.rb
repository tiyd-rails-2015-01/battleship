class Game

  def initialize( player, computer, ship_sizes = [2,3,3,4,5])
    @player = player
    @computer = computer
    @ship_sizes = ship_sizes
  end

  def welcome
    puts "Welcome, #{@player.name} and HAL 9000!\nIt's time to play Battleship.\n"
  end

  def place_ships
    @player.place_ships(@ship_sizes)
    @computer.place_ships(@ship_sizes)
  end

  def take_turn
    puts "Miss!" #arbitrary
  end

  def play
    #arbitrary
  end

end
