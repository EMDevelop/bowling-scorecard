require_relative './frame'
class StandardFrame < Frame

  def initialize(frame_number)
    super(frame_number) 
  end

  def play 
    [:first,:second].each { |first_second| record_roll(first_second) unless strike? }
  end

  private

  def record_roll(first_second)
    input = get_player_input(first_second)
    first_second == :first ? @first_roll_score = input : @second_roll_score = input
    @remaining_pins -= input
  end

  def get_player_input(first_second)
    Player.enter_roll(pins: @remaining_pins,frame:  @frame_number, roll: first_second)
  end

end