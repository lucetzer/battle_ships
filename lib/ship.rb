class Ship

  attr_reader :position, :damage, :size, :co, :direction

  def initialize(co, direction, size)
    @co = co
    @position = []
    @direction = direction
    @damage = 0
    @size = size
    self.convert(co)
  end

  def convert(co)
    size.times do
      self.position << co
      split_co = co.chars
      letter, number = split_co[0].ord, split_co[1].to_i
      number += 1 if direction == :S
      number -= 1 if direction == :N
      # letter = split_co[0].ord
      (letter += 1).chr if direction == :E
      (letter -= 1).chr if direction == :W
      number = number.to_s
      letter = letter.chr
      co = [letter, number].join
    end
  end




  def hit
    @damage += 1
  end

  def sunk
    "Your ship is sunk" if self.size == self.damage
  end

end
