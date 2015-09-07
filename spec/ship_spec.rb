require 'ship.rb'

describe Ship do

  it 'responds to method place_ship' do
    is_expected.to respond_to :place_ship
  end

  it 'responds to size with 1 argument' do
    is_expected.to respond_to(:size).with(1).argument
  end

  it 'responds to direction with 1 argument' do
    is_expected.to respond_to(:direction).with(1).argument
  end

end