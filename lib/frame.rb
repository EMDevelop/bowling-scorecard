require_relative './player'
class Frame

  def initialize(frame_number)
    @frame_number = frame_number
    @remaining_pins = 10
  end

  attr_reader :frame_number, :remaining_pins

  def play 
    @remaining_pins -= get_roll(:first)
    @remaining_pins -= get_roll(:second)
  end

  private

  def get_roll(number)
    Player.enter_roll(pins: @remaining_pins,frame:  @frame_number, roll: number)
  end

end