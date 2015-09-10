require 'player.rb'

describe Player do
  let(:ship) { double :ship, position: 'A1', hit: nil }

  describe '#place' do

    it { is_expected.to respond_to(:place).with(1).argument }

    it 'places ships onto the board' do
     expect(subject.place(ship)).to eq(subject.board.ship_array)
   end
 end

  it 'tells board to receive hit' do
    subject.place ship
    expect(subject.fire("A1")).to eq("Hit")
  end

  describe '#hits and #misses' do

    it { is_expected.to respond_to :misses}

    it 'can report missed positions' do
      subject.place ship
      subject.fire('B1')
      expect(subject.misses.include?('B1')).to be true
    end

    it { is_expected.to respond_to :hits}

    it 'can report hits positions' do
      subject.place ship
      subject.fire('A1')
      expect(subject.hits.include?('A1')).to be true
    end
  end
end
