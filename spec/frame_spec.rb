require 'frame'
describe Frame do

  let(:frame) { Frame.new(1) }

  context 'I want the game to have 10 frames' do

    it 'inits' do
      expect(frame.frame_number).to eq 1
    end

  end

  context 'I want the pins to reset after every frame' do

    it 'inits with pins of 10' do
      expect(frame.remaining_pins).to eq 10
    end

  end

  context 'I want to be able to knock over 10 pins in a roll' do

    xit 'knocks 10 pins' do
      allow(frame).to receive(:record_roll).and_return(10,0)
      frame.play
      expect(frame.remaining_pins).to eq 0
    end

  end

  context 'I want to be able to keep track of my score' do

    xit 'records first score' do
      allow(frame).to receive(:record_roll).and_return(2,0)
      frame.play
      expect(frame.first_roll_score).to eq 2
    end

  end

end