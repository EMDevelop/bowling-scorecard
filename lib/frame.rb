require_relative './player'
class Frame

  def initialize(frame_number)
    @frame_number = frame_number
    @remaining_pins = 10
  end

  attr_reader :frame_number, :remaining_pins

  def play 
    @remaining_pins -= get_roll(:first)
  end


  private

  def get_roll
    Player.roll(get_roll)
    puts "Enter your roll result for frame #{@frame_number}"
    input = gets.to_i
  end


end