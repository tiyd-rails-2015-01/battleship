def get_user_input
  gets.chomp
end


class HumanPlayer <Player
  def initialize(name= "Dave")
    @name = name
    @ships = []
    @made_ships= []
    @ship_num = 0
    @board=Board.new
  end

  def name
    @name
  end

  def board
    @board
  end

  def place_ships(lengths= [2, 3, 3, 4, 5])
    lengths.each  do |length|
      ship=Ship.new(length)
      @ship_num +=1
      puts "#{@name}, where would you like to place a ship of length #{length}?"
      coordinates = get_user_input
      x = board.x_of(coordinates)
      # puts "#{x}"
      y = board.y_of(coordinates)
      # puts "#{y}"
      puts "Across or Down?"
      orientation = get_user_input
      if orientation == "Across"
        across = true
      else
        across = false
      end
      @made_ships << [ship,x,y,across]
      # puts "Made Ships: #{@made_ships}"
    end
    @made_ships.each do |made_ship|
      @ship= made_ship[0]
      @x= made_ship[1]
      @y= made_ship[2]
      across=made_ship[3]
      board.place_ship(@ship,@x, @y, across)
      @ships << @ship
    end
      if board.has_ship_on?(@x,@y)
        @successful=true
        @ship_num -=1
      else
        puts "Unfortunately, that ship overlaps with one of your other ships.  Please try again."
      end
    end
end
