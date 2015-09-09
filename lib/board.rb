require 'ship.rb'
class Board

  attr_reader :ship_array

  def initialize
    @ship_array = []
  end

  def receive_ship(ship)
    ship_array << ship
  end

  def fire(co)
    @fire = co
    receive_hit
    report_hit
  end

  def status
    sunk? ? "Game Over" : "Still in the game"
  end

  private

  def receive_hit
    ship_array.each do |ship|
      if ship.position == @fire
        ship.hit
      end
    end
  end

  def been_hit?
    ship_array.one?{ |ship| ship.position == @fire }
  end

  def report_hit
    been_hit? == false ? "Missed" : "Hit"
  end

  def sunk?
    ship_array.empty?
  end
end

  # def create_board
  # end

  # def horizontal_array
  #   [0,1]
  # end

  # def vertical_array
  #   [0,1]
  # end
