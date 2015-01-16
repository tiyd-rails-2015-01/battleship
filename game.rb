class Game

  def initialize( player, computer)
    @player = player
    @computer = computer
    @ship_sizes = [2,3,3,4,5]
  end

  def welcome
    puts "Welcome, #{@player.name} and HAL 9000!\nIt's time to play Battleship.\n"
  end

  def place_ships
    # @player.board.ships.each do |ship|
    #   puts "#{@player.name}, where would you like to place a ship of length #{ship.length}?\nAcross or Down?\n"
    # end
    # puts "DEBUG: board.ships.length: #{@player.board.ships.length}"
    #
    # puts "HAL 9000 has placed his ships.\n"
    @player.place_ships(@ship_sizes)
    @computer.place_ships(@ship_sizes)
  end

end
