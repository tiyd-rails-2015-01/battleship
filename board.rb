require './ship.rb'

class Board

  attr_reader :ships

  def initialize( isTargetGrid = false )
    @ships = [] #array of Ship objects

    #if isTargetGrid: 0 = no shot fired at this coord
    # =>              "-" = miss
    # =>              "+" = hit

    #grid: 0 = no shot fired at this coord
    # =>          1 = ship
    # =>          2 = red peg (hit)
    @grid = [  [0,0,0,0,0,0,0,0,0,0],
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
    # check if ship overlaps with any prior ships
    @ships.each do |otherShips|
      if ship.overlaps_with?(otherShips)
        return false
      end
    end

    @ships << ship

    ship.coords.each do |coord|
      @grid[coord[1]-1][coord[0]-1] = 1
    end

    return true
  end

  def mark_target_board(x,y,hitOrMiss) #hitOrMiss = - for miss, + for hit
    if hitOrMiss == "-"
      @grid[y-1][x-1] = "-"
    elsif hitOrMiss == "+"
      @grid[y-1][x-1] = "+"
    else #this should never happen
      @grid[y-1][x-1] = 3
    end

  end

  def fire_at(x,y)
    xIsInBounds = (x >= 0) && (x < 10)
    yIsInBounds = (y >= 0) && (y <=10)

    @ships.each do |ship|
      # if firing at this coordinate hits and the ship has not already been hit at the coord is in bounds...
      if ship.fire_at(x,y) && @grid[y-1][x-1] == 1 && xIsInBounds && yIsInBounds
        @grid[y-1][x-1] = 2 # 2 indicates a hit, also, counter intuitive! do I have to reverse these??
        return true
      end
    end

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
        if @grid[y][x] == 0
          thisLine += "  "
        elsif @grid[y][x] == 1
          # if @isTargetGrid
            # thisLine += "- "
          # else
            thisLine += "O "
          # end
        elsif @grid[y][x] == 2
          # if @isTargetGrid
            # thisLine += "+ "
          # else
            thisLine += "X "
          # end
        elsif @grid[y][x] == "+"
          thisLine += "+ "
        elsif @grid[y][x] == "-"
          thisLine += "- "
        end
      end

      thisLine += "|"
      puts thisLine
    end
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

    if string.upcase.include?("10")
      return 10
    end

    ("1".."9").each do |i|
      if string.upcase.include?(i)
        return i.to_i
      end
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
    # cleaner code... make it work later 
    # ("A".."J").each do |c|
    #   if string.upcase.include?(c)
    #     return ("A".."J").to_a.index(c)
    #   end
    # end

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
