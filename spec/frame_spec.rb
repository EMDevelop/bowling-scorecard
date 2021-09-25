require 'frame'
describe Frame do

  let(:frame) { Frame.new(1) }

  context 'I want the game to have 10 frames' do

    it 'inits' do
      expect(frame.frame_number).to eq 1
    end

  end

  context 'I want to be able to knock over 10 pins in a roll' do

    it 'knocks 10 pins' do
      
    end

  end

end