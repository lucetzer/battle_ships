class Ship

  attr_reader :position, :damage, :size

  def initialize(position, size = 1)
    @position = position
    @damage = 0
    @size = size
  end

  def hit
    @damage += 1
  end

  def sunk
    "Your ship is sunk" if self.size == self.damage
  end

end
