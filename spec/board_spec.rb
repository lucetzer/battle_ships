require 'board.rb'

describe Board do

  it 'should respond to receive_ship' do
    is_expected.to respond_to(:receive_ship).with(1).argument
  end

  it 'should have an instance of ship on board' do
    ship1 = Ship.new "A1"
    subject.receive_ship(ship1)
    expect(subject.ship_array).to include(ship1)
  end

  it 'can expect method receive_hit' do
    is_expected.to respond_to :receive_hit?
  end

  it 'can actually receive hits' do
    ship = Ship.new('A1')
    subject.ship_array << ship
    expect(subject.receive_hit? "A1").to be_truthy
  end

  it 'can receive misses' do
    ship = Ship.new('A1')
    subject.ship_array << ship
    expect(subject.receive_hit? "B2").to be_falsey
  end

end
