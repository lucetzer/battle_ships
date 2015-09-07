require 'ship.rb'

describe Ship do

  # it 'responds to method place_ship' do
  #   is_expected.to respond_to :place_ship
  # end

  # it 'responds to size with 1 argument' do
  #   is_expected.to respond_to(:size).with(1).argument
  # end

  # it 'responds to direction with 1 argument' do
  #   is_expected.to respond_to(:direction).with(1).argument
  # end

  it 'has a position when created' do
    ship = Ship.new('A1')
    expect(ship.position).to eq('A1')
  end

  # it 'has a size when created' do
  #   ship = Ship.new('A1', 4)
  #   expect(ship.size).to eq(4)
  # end

end