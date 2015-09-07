require 'board.rb'

describe Board do

  it 'should respond to receive_ship' do
    is_expected.to respond_to(:receive_ship).with(1).argument
  end

  it 'should have an instance of ship on board' do
    ship1 = Ship.new "A1"
    subject.receive_ship(ship1)
    expect(subject.board_array).to include(ship1.position)
  end

  it 'can expect method receive_hit' do
    is_expected.to respond_to :receive_hit
  end

  it 'can actually receive hits' do
    board_array = ["A1"]
    expect(subject.receive_hit "A1").to be_truthy
  end

  # it 'should respond to create board' do
  #   is_expected.to respond_to :create_board
  # end

  # it 'should respond to a horizontal array' do
  #   is_expected.to respond_to :horizontal_array
  # end

  # it 'horizontal array should contain an array of size' do
  #   expect(subject.horizontal_array).to include 0,1
  # end

  # it 'should respond to a vertical array' do
  #   is_expected.to respond_to :vertical_array
  # end

  # it 'vertical array should contain an array of size' do
  #   expect(subject.vertical_array).to include 0,1
  # end



end