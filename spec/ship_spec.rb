require 'ship.rb'

describe Ship do

  it 'has a position when created' do
    ship = Ship.new('Patrol Boat', 'A1', :S, 1)
    expect(ship.position).to eq(['A1'])
  end

  describe "#hits" do
    it 'It is initialized with no hits' do
      ship = Ship.new('Patrol Boat', 'A1', :S, 1)
      expect(ship.damage).to eq(0)
    end

    it 'Updates damage on the ship when hit' do
      ship = Ship.new('Patrol Boat', 'A1', :S, 1)
      ship.hit('A1')
      expect(ship.damage).to eq(1)
    end
  end

  it "can be sunk" do
    ship = Ship.new('Patrol Boat', 'A1', :S, 1)
    ship.hit('A1')
    expect(ship.sunk).to eq("Your ship is sunk")
  end

  it "converts ship position and direction to coordinates" do
    ship = Ship.new('Destroyer', 'A1', :S, 2)
    expect(ship.position).to eq (['A1', 'A2'])
  end

  it "converts ship position and direction to coordinates" do
    ship = Ship.new('Submarine', 'D5', :S, 3)
    expect(ship.position).to eq (['D5', 'D6', 'D7'])
  end

  it 'Raises error if ship is out of bounds' do
    expect{Ship.new('Submarine', "A1", :W, 3)}.to raise_error
    "Out of bounds, pick another direction"
  end

end
