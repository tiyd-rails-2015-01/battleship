class Board
  attr_accessor :ships
  attr_accessor :misses
  attr_accessor :hits

  def initialize
    @ships = []
    @hits = []
    @misses = []
  end


  def place_ship(ship, x, y, across)
    ship.place(x, y, across)
    conflict = false
    @ships.each do |s|
      if s.overlaps_with?(ship)
        conflict = true
      end
    end
    if !conflict
      @ships << ship
      return true
    else
      return false
    end
  end


  def has_ship_on?(x, y)
    has_ship_on = false
    @ships.each do |s|
      if s.covers?(x,y)
        has_ship_on = true
      end
    end
    return has_ship_on
  end

  def fire_at(x, y)
      if @ships.empty? || @hits.include?([x, y])
        return false
      else
        @ships.each do |ship|
          if ship.fire_at(x, y)
            @hits << [x, y]
        return true
      else
        return false
        end
      end
        end
  end


  def display_header
    puts "    1   2   3   4   5   6   7   8   9   10"
    puts "  -----------------------------------------"
  end

  def display_bottom
    puts "  -----------------------------------------"
  end

  def display
    letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"]
    output = ""
    self.display_header
    (1..10).each do |r|
      output = "#{letters[r - 1]} |"
      (1..10).each do |c|
        if @hits.include?([c, r])
          output << " X |"
        elsif self.has_ship_on?(c, r)
          output << " O |"
        else
          output << "   |"
        end
      end
      puts output
    end
    self.display_bottom
  end

  def sunk?
    if @ships.empty?
      return false
    end
    @ships.each do |ship|
      if ship.sunk? == false
        return false
      else
        return true
      end
    end
  end

  def x_of(coords)
    @coords = coords
    x = coords [1..coords.length].to_i
  end

  def y_of(coords)
    letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"]
    y = coords[0]
    letters.each_with_index do |l, index|
      if y == l
        return (index + 1)
      end
    end
  end

end



attacker_board = Board.new
defender_board = Board.new
