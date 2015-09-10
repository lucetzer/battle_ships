require_relative 'player'

class Game

  attr_reader :boat_names, :player1, :player2

  def initialize
    @player1 = Player.new
    @player2 = Player.new
    @boat_names = {:Aircraft_Carrier => 5 , 'Battleship' => 4, 'Submarine' => 3, 'Destroyer' => 3, 'Patrol_Boat' => 2}
  end


  def place_boats(player1)
    count = 0
    puts "Place #{boat_names.keys[count]} at grid ref e.g A1"
    grid_ref = gets.chomp
    puts "Pick a direction it should face e.g N/S/E/W"
    direction = gets.chomp.to_sym
    boat_names.keys[count] = Ship.new(boat_names.keys[count], grid_ref, direction, boat_names.values[count])
    player1.board.ship_array << boat_names.keys[count]
    count += 1
  end



end
