require 'last_frame'
describe LastFrame do

  let(:frame) { LastFrame.new(10) }
  
  context 'My 10th frame should go for no longer than 3 rolls in total' do

    it 'inits as a frame' do
      expect(frame.frame_number).to eq 10
      expect(frame.third_roll_score).to eq 0
    end

    it 'three strikes' do
      allow(frame).to receive(:get_player_input).and_return(10,10,10)
      frame.play
      expect(frame.first_roll_score + frame.second_roll_score + frame.third_roll_score).to eq 30
    end

  end

end