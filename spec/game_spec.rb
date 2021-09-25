require 'game'
describe Game do 

  context 'I want the game to have 10 frames' do
    
    it 'ends' do
      expect{ subject.start_game }.to output(include("Game Over\n")).to_stdout
    end

    it 'runs 10 times' do
      expect(subject).to receive(:start_frame).exactly(10).times
      subject.start_game 
    end

    xit 'error if run 11 times' do
      allow(subject).to receive(:start_frame).exactly(11).times
      expect{ subject.start_game }.to raise_error "You're cheating!"
    end

  end

end