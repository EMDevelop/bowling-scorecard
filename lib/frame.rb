require_relative './player'
class Frame

  def initialize(frame_number)
    @frame_number = frame_number
    @remaining_pins = 10
    @first_roll_score = 0
    @second_roll_score = 0
  end

  attr_accessor :frame_number, :remaining_pins, :first_roll_score, :second_roll_score

  def play 
    [:first,:second].each { |first_second| record_roll(first_second) }
  end

  private

  def record_roll(first_second)
    if @first_roll_score == 10
      @remaining_pins = 0
      return
    end
    input = get_player_input(first_second)
    first_second == :first ?  @first_roll_score = input : @second_roll_score = input 
    @remaining_pins -= input
  end

  def get_player_input(first_second)
    Player.enter_roll(pins: @remaining_pins,frame:  @frame_number, roll: first_second)
  end

end