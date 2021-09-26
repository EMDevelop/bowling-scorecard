require 'game'
describe Game do 

  let(:game) { Game.new(0) }

  context 'I want the game to have 10 frames' do
  
    before do
      allow_any_instance_of(Frame).to receive(:get_player_input).and_return(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1)
    end

    it 'ends' do 
      game.start_game
      expect{ game.gameover }.to output(include("Game Over")).to_stdout
    end
    
    it 'runs 10 times' do
      p "This test is expected to have 0 sum"
      expect(game).to receive(:start_frame).exactly(10).times
      game.start_game 
    end

  end

  context 'I want to know my score so far after each frame' do

    before do
      allow_any_instance_of(Frame).to receive(:get_player_input).and_return(1,1)
    end   

    it 'Sums score of 1 per game = 20' do
      game.start_game
      expect(game.total_score).to eq 20
    end

  end

  context 'I want to receive a bonus for a Strike' do

    it '30' do
      allow(Player).to receive(:gets).and_return(10,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1)
      game.start_game
      expect(game.total_score).to eq 30
    end

    it '30' do
      allow(Player).to receive(:gets).and_return(10,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1)
      game.start_game
      expect(game.total_score).to eq 30
    end

  end

end