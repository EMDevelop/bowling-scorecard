require 'player'
describe Player do

  context 'I want to be able to knock over 10 pins in a roll' do

    it 'can roll and hit 10' do
      expect(described_class.roll(10)).to eq 10
    end

    it 'cannot roll over 10' do
      expect(described_class.roll(11)).to eq 10
    end

    it 'can roll under 10' do
      expect(described_class.roll(3)).to eq 3
    end

  end

end