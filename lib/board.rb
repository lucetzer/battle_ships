require_relative 'ship'
# require '~/Projects/battle_ships/lib/ship.rb'
class Board

  attr_reader :ship_array, :shot

  def initialize
    @ship_array = []
    @shot = []
  end

  def receive_ship(ship)
    ship_array << ship
  end

  def status
    sunk? ? "Game Over" : "Still in the game"
  end

  def receive_hit
    ship_array.each do |ship|
      if ship.position == @shot[0]
        ship.hit
        return "Hit"
      else
        return "Missed"
      end
    end
  end

  def sunk?
    ship_array.empty?
  end
end