class Game
  def initialize(human, computer, ships = [2, 3, 3, 4, 5])
    @human = human
    @computer = computer
    @ships = ships
    @turn = 1
  end

  def welcome
    puts "Welcome, #{@human.name} and HAL 9000!\nIt's time to play Battleship.\n"
  end

  def place_ships
    @human.place_ships(@ships)
    @computer.place_ships(@ships)
  end

  def take_turn
    if @turn.odd?
      coordinates = @human.turn
      if @computer.board.fire_at(coordinates[0], coordinates[1])
        puts "Hit!"
        @computer.board.hits
      else
        puts "Miss!"
        @computer.board.misses
      end

    else
      coordinates = @computer.turn
      if @human.board.fire_at(coordinates[0], coordinates[1])
        puts "Hit!"
        @human.board.hits
      else
        puts "Miss!"
        @human.board.misses
      end
    end
    @turn += 1
  end
end
