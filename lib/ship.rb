class Ship

  attr_reader :position, :damage, :size

  def initialize(position, direction, size)
    @position = []
    @direction = direction
    @damage = 0
    @size = size
  end

  def convert
    
  end



  def hit
    @damage += 1
  end

  def sunk
    "Your ship is sunk" if self.size == self.damage
  end

end
