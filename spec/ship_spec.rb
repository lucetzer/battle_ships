require 'ship.rb'

describe Ship do

  it 'has a position when created' do
    ship = Ship.new('A1')
    expect(ship.position).to eq('A1')
  end

end