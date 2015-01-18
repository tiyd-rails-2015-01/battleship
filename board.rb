require './ship.rb'

class Board



  def initialize
    @ships = []
    @place
    @hits = []

  end

  def has_ship_on?(x, y)
    covered = false
    @ships.each do |ship|
      if ship.covers?(x, y)
        covered = true
      end
    end
    return covered
  end

  def place_ship(ship, x, y, across)
    ship.place(x, y, across)
    @ships.each do |other_ships|
      if ship.overlaps_with?(other_ships)
        return false
      end
    end
    @ships << ship
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

  def sunk?
    if @ships.empty?
      return false
    else
      @ships.each do |ship|
        if ship.sunk?
          @ships.delete(ship)
        end
      end
      if @ships.empty?
        return true
      else
        return false
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
    #covered = false
    output = ""
    self.display_header
    (1..10).each do |r|
      output = "#{letters[r-1]} |"
      (1..10).each do |c|
        if @hits.include?([c, r])
          output << " X |"
        elsif self.has_ship_on?(c, r)
          output << " O |"
          #covered = true
        else
          output << "   |"
        end
        # output += "|"
      end
      puts output

    end
    self.display_bottom
  end

  def x_of(coordinate)
    coordinate.slice(1..coordinate.length).to_i
  end

  def y_of(coordinate)
    letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I"]
    y = coordinate[0]
    letters.each_with_index do |letter, index|
      if letter == y
        return index + 1
      end
    end
  end

end
