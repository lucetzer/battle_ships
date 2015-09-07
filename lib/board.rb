require '~/Projects/battle_ships/lib/ship.rb'
class Board

  attr_reader :board_array

  def initialize
    @board_array = []
  end

  def receive_ship(ship)
    board_array << ship.position
  end

  def receive_hit(hit)
    board_array.include?(hit)
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