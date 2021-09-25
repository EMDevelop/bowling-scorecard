require_relative './player'
class Frame

  def initialize(frame_number)
    @frame_number = frame_number
    @remaining_pins = 10
    @first_roll_score = 0
  end

  attr_reader :frame_number, :remaining_pins, :first_roll_score

  def play 
    [:first,:second].each { |roll| record_roll(roll) }
  end

  private

  def record_roll(number)
    score = Player.enter_roll(pins: @remaining_pins,frame:  @frame_number, roll: number)
    @remaining_pins -= score
  end

end