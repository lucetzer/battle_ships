require_relative 'ship'
# require '~/Projects/battle_ships/lib/ship.rb'
class Board

  attr_reader :ship_array, :shot, :misses, :hits

  def initialize
    @ship_array = []
    @shot = []
    @hits = []
    @misses = []
  end

  def receive_ship(ship)
    overlapping?(ship)
    ship_array << ship
  end

  def overlapping?(ship)
    fail "There's already a ship there, pick another position" if
    (ship_array.any? {|existing_ship| existing_ship.position == ship.position})
  end

  def status
    sunk? ? "Game Over" : "Still in the game"
  end

  def receive_hit
    ship_array.each do |ship|
      if ship.position == shot[0]
        ship.hit
        hits << shot[0]
        shot.clear
        return "Hit"
      else
        misses << shot[0]
        shot.clear
        return "Missed"
      end
    end
  end

  def sunk?
    ship_array.empty?
  end
end
