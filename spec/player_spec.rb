require 'player.rb'

describe Player do

  it 'responds to place method with argument of ship' do
    expect(subject).to respond_to(:place).with(1).argument
  end

  it 'places ships onto the board' do
   ship = Ship.new "A1"
   expect(subject.place(ship)).to eq(subject.board.ship_array)
 end

  it 'take a shot to the board' do
    expect(subject.fire("A1")).to eq(subject.board.shot)
  end


end
