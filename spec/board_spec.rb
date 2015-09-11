require 'board.rb'

describe Board do

  let(:ship) {double :ship, position: ["A1"], direction: :S, size: 1, hit: 0}
  let(:player) {double :player}

  it { is_expected.to respond_to(:receive_ship).with(1).argument }

  it 'should have an instance of ship on board' do
    subject.receive_ship(ship)
    expect(subject.ship_array).to include(ship)
  end

  it 'Reports missed when ship is missed' do
    subject.receive_ship(ship)
    expect(subject.receive_hit("A2")).to eq("Missed")
  end

  it 'Reports hit when ship in position has been hit' do
    subject.receive_ship(ship)
    expect(subject.receive_hit("A1")).to eq("Hit")
  end

  it 'Reports that not all ships are sunk' do
    subject.ship_array << ship
    expect(subject.status).to eq("Still in the game")
  end

  it 'Raises error if ships overlap' do
    subject.receive_ship(ship)
    expect{subject.receive_ship(ship)}.to raise_error
    "There's already a ship there, pick another position"
  end

  it "Adds to misses when shot missed" do
    subject.receive_ship(ship)
    subject.receive_hit('B1')
    expect(subject.misses).to eq ['B1']
  end

  it "Adds to misses when shot missed" do
    subject.receive_ship(ship)
    subject.receive_hit('A1')
    expect(subject.hits).to eq ['A1']
  end

end
