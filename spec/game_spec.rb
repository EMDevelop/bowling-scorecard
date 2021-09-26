require 'game'
describe Game do 

  let(:game) { Game.new(0) }

  context 'I want the game to have 10 frames' do

    before do
      allow(Player).to receive(:gets).and_return('1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1')
    end

      it 'ends' do 
        expect{ subject.start_game }.to output(include("Game Over")).to_stdout
      end

      it 'runs 10 times' do
        expect(game).to receive(:start_frame).exactly(10).times
        game.start_game 
      end

  end

  context 'I want to know my score so far after each frame' do


  end

end