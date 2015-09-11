require_relative 'ship'


class Board

  attr_reader :ship_array, :misses, :hits

  def initialize
    @ship_array = []
    @hits = []
    @misses = []
  end

  def receive_ship(ship)
    ship_array.each do |position|
      fail "There's already a ship there, pick another position" if
      overlapping?(position, ship)
    end
    ship_array << ship
  end

  def overlapping?(ship1, ship2)
    (ship1.position & ship2.position).any?
    # fail "There's already a ship there, pick another position" if
    # (ship_array.any? {|existing_ship| existing_ship.position == ship.position})

  end

  def status
    sunk? ? "Game Over" : "Still in the game"
  end

  def receive_hit(co)
    ship_array.each do |ship|
      if ship.position.include?(co)
        hits << co
        return "Hit"
      else
        misses << co
        return "Missed"
      end
    end
  end

  def sunk?
    ship_array.empty?
  end
end
