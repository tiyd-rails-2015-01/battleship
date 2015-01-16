class Game

  def initialize( player, computer)
    @player = player
    @computer = computer
  end

  def welcome
    puts "Welcome, #{@player.name} and HAL 9000!\nIt's time to play Battleship.\n"
  end
end
