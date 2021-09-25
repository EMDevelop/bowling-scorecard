require 'game'
describe Game do 

  context 'I want the game to have 10 frames' do
    
    it 'ends' do
      expect{ described_class.start_game }.to output(include("Game Over\n")).to_stdout
    end

    it 'runs 10 times' do
      expect(described_class).to receive(:start_frame).exactly(10).times
      described_class.start_game 
    end

    xit 'error if run 11 times' do
      allow(described_class).to receive(:start_frame).exactly(11).times
      expect{ described_class.start_game }.to raise_error "You're cheating!"
    end

  end

end