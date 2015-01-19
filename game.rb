def get_user_input
  gets.chomp
end
class Game
  def initialize(human, computer, default_lengths=[2, 3, 3, 4, 5])
    @human=human
    @computer=computer
    @default_lengths=default_lengths
    @turn= 1
    @play
  end
  def play
    @play
  end
  def welcome
    puts "Welcome, #{@human.name} and #{@computer.name}!\nIt's time to play Battleship.\n"
  end

  def place_ships
    @human.place_ships(@default_lengths)
    @computer.place_ships(@default_lengths)
  end

  def take_turn
    if @turn.odd?
      puts "Where do you want to fire at?"
      coordinates = get_user_input
      x = @computer.board.x_of(coordinates)
      y= @computer.board.y_of(coordinates)
      if @computer.board.fire_at(x, y)
        puts "Hit!"
      else
        puts "Miss!"
      end

    else
      x = rand(1..10)
      y= rand(1..10)
      if @human.board.fire_at(x, y)
        puts "Hit!"
      else
        puts "Miss!"
      end
    end
    @turn += 1
  end

end
