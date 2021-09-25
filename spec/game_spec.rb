require 'game'
describe Game do 

  context 'I want the game to have 10 frames' do

    it 'ends' do
      expect{described_class.start_game}.to output("Game Over\n").to_stdout
    end

  end

end