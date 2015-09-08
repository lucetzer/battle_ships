require '~/Projects/battle_ships/lib/ship.rb'
class Board

  attr_reader :ship_array

  def initialize
    @ship_array = []
  end

  def receive_ship(ship)
    ship_array << ship
  end

  def receive_hit?(hit)
    ship_array.one? { |ship| ship.position == hit }
  end

  # def create_board
  # end

  # def horizontal_array
  #   [0,1]
  # end

  # def vertical_array
  #   [0,1]
  # end

end
