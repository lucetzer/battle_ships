require_relative 'board'

class Player

  attr_reader :board

  def initialize
    @board = Board.new
  end

  def place(ship)
    board.receive_ship(ship)
  end

  def fire(co)
    board.shot << co
    board.receive_hit
  end

  def misses
    board.misses
  end

  def hits
    board.hits
  end

end
#
# p = Player.new
# ship = Ship.new "A1"
#
# p.place ship
# p.fire "A1"
