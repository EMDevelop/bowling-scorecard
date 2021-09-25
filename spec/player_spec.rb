require 'player'
describe Player do

  let(:player) { Player.new }

  context 'I want to be able to knock over 10 pins in a roll' do

    it 'can roll and hit 10' do
      expect(player.roll(10)).to eq 10
    end

  end

end