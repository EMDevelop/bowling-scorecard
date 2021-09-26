require 'last_frame'
describe LastFrame do

  let(:frame) { LastFrame.new(10) }
  
  context 'My 10th frame should go for no longer than 3 rolls in total' do

    it 'inits as a frame' do
      expect(frame.frame_number).to eq 10
    end

  end

end