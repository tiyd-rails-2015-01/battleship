def get_user_input
  gets.chomp
end

class Game
  def initialize(human, computer, ships=[2, 3, 3, 4, 5])
    @human = human
    @computer = computer
    @ships = ships
    @turn_counter = 0
    @won = false
  end
  def welcome
    puts "Welcome, #{@human.name} and #{@computer.name}!\nIt's time to play Battleship."
  end
  def place_ships
    @human.place_ships(@ships)
    @computer.place_ships(@ships)
  end
  def take_turn
    while @won = false
      if @turn_counter.even?
        puts "Take a shot!"
        coords = get_user_input

        x = @human.board.x_of(coords)
        y = @human.board.y_of(coords)
        @human.board.fire_at(x, y)
        if true
          puts "Hit!"
        else
          puts "Miss!"
        end
        @turn_counter += 1
      else
        @computer.fire
        @turn_counter += 1
      end
    end
  end
end
