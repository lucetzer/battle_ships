require 'board.rb'

describe Board do

  it 'should respond to receive_ship' do
    is_expected.to respond_to :receive_ship
  end

end