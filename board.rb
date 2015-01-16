require './ship.rb'

class Board

  attr_reader :ships

  def initialize
    @ships = [] #array of Ship objects

    #target grid: 0 = no shot fired at this coord
    # =>          1 = ship
    # =>          2 = red peg (hit)
    @target_grid = [  [0,0,0,0,0,0,0,0,0,0],
                      [0,0,0,0,0,0,0,0,0,0],
                      [0,0,0,0,0,0,0,0,0,0],
                      [0,0,0,0,0,0,0,0,0,0],
                      [0,0,0,0,0,0,0,0,0,0],
                      [0,0,0,0,0,0,0,0,0,0],
                      [0,0,0,0,0,0,0,0,0,0],
                      [0,0,0,0,0,0,0,0,0,0],
                      [0,0,0,0,0,0,0,0,0,0],
                      [0,0,0,0,0,0,0,0,0,0]]
  end

  def has_ship_on?(x,y)
    @ships.each do |i|
      if i.covers?(x,y)
        return true
      end
    end

    return false
  end

  def place_ship( ship, x, y, isHorizontal)

    ship.place(x,y,isHorizontal)
    @ships.each do |otherShips|
      if ship.overlaps_with?(otherShips)
        return false
      end
    end

    @ships << ship

    ship.coords.each do |coord|
      @target_grid[coord[1]-1][coord[0]-1] = 1
    end

    return true
  end

  def fire_at(x,y)
    xIsInBounds = (x >= 0) && (x < 10)
    yIsInBounds = (y >= 0) && (y <=10)

    @ships.each do |ship|
      if ship.fire_at(x,y) && @target_grid[y-1][x-1] == 1 && xIsInBounds && yIsInBounds
        @target_grid[y-1][x-1] = 2 # 2 indicates a hit, also, counter intuitive! do I have to reverse these??
        return true
      end
    end
    #
    # if xIsInBounds && yIsInBounds && @target_grid[y][x] == 0
    #   @target_grid[y][x] = 1 # 1 indicates a miss
    # end

    return false
  end

  def display

    letters = ["A","B","C","D","E","F","G","H","I","J"]

    puts "    1   2   3   4   5   6   7   8   9   10"
    puts "  -----------------------------------------"

    10.times do |y|
      thisLine = letters[y] + " "

      10.times do |x|
        thisLine += "| "
        if @target_grid[y][x] == 0
          thisLine += "  "
        elsif @target_grid[y][x] == 1
          thisLine += "O "
        elsif @target_grid[y][x] == 2
          thisLine += "X "
        end
      end

      thisLine += "|"
      puts thisLine
    end
    # puts "A |   |   |   |   |   |   |   |   |   |   |"
    # puts "B |   |   |   |   |   |   |   |   |   |   |"
    # puts "C |   |   |   |   |   |   |   |   |   |   |"
    # puts "D |   |   |   |   |   |   |   |   |   |   |"
    # puts "E |   |   |   |   |   |   |   |   |   |   |"
    # puts "F |   |   |   |   |   |   |   |   |   |   |"
    # puts "G |   |   |   |   |   |   |   |   |   |   |"
    # puts "H |   |   |   |   |   |   |   |   |   |   |"
    # puts "I |   |   |   |   |   |   |   |   |   |   |"
    # puts "J |   |   |   |   |   |   |   |   |   |   |"
    puts "  -----------------------------------------"

  end

  def sunk?
    allShipsSunk = false

    @ships.each do |ship|
      unless ship.sunk?
        return false
      end
    end

    if( @ships.length > 0 )
      return true
    else
      return false
    end
  end

  def x_of( string )
    if string.upcase.include?("1") && !string.include?("10")
      return 1
    elsif string.upcase.include?("2")
      return 2
    elsif string.upcase.include?("3")
      return 3
    elsif string.upcase.include?("4")
      return 4
    elsif string.upcase.include?("5")
      return 5
    elsif string.upcase.include?("6")
      return 6
    elsif string.upcase.include?("7")
      return 7
    elsif string.upcase.include?("8")
      return 8
    elsif string.upcase.include?("9")
      return 9
    elsif string.upcase.include?("10")
      return 10
    end

    #should never happen!
    return nil
  end

  def y_of( string )
    # a = 1, b = 2, c = 3 ...
    if string.upcase.include?("A")
      return 1
    elsif string.upcase.include?("B")
      return 2
    elsif string.upcase.include?("C")
      return 3
    elsif string.upcase.include?("D")
      return 4
    elsif string.upcase.include?("E")
      return 5
    elsif string.upcase.include?("F")
      return 6
    elsif string.upcase.include?("G")
      return 7
    elsif string.upcase.include?("H")
      return 8
    elsif string.upcase.include?("I")
      return 9
    elsif string.upcase.include?("J")
      return 10
    end

    #should never happen!
    return nil
  end

  def debug_board
    puts "Board debug:"
    puts "Ship coordinates:"
    @ships.each do |ship|
      puts "Ship:"
      ship.print_coords
    end
  end

end
