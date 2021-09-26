require_relative './standard_frame'
require_relative './last_frame'
class Game

  NUMBER_OF_FRAMES = 10

  def initialize(current_frame = 0)
    @current_frame = current_frame
    @frames = Array.new
    @total = Array.new
  end

  attr_accessor :frames

  def start_game 
    loop_frames
    gameover
  end

  def gameover
    p "Game Over" if @current_frame == NUMBER_OF_FRAMES - 1 
  end

  def total_score
    # p @frames
    @frames.each { |frame|  @total << frame.total }
    @total.sum
  end

  private 

  def loop_frames
    setup_frames
    while true do
      start_frame
      calculate_scores
      break if @current_frame == NUMBER_OF_FRAMES - 1
      @current_frame += 1
    end
  end

  def start_frame
    @frames[@current_frame].play
  end

    def get_frames
    {
      :current => @frames[@current_frame], 
      :prev => @frames[@current_frame - 1], 
      :prev_prev => @frames[@current_frame - 2]
    }
  end


  def calculate_scores
    current_frame = @frames[@current_frame]
    current_frame.total = current_frame.first_roll_score + current_frame.second_roll_score
    handle_standard__frame_bonus
    # handle_last_frame_bonus
  end

  def handle_standard__frame_bonus
    current_frame = get_frames[:current]
    return if current_frame.frame_number == 1 || current_frame.frame_number == 10 ||
    add_stike_bonus
    add_spare_bonus
  end


  def add_stike_bonus
    current_frame, prev_frame, prev_prev_frame = get_frames[:current], get_frames[:prev], get_frames[:prev_prev]
    prev_frame.strike? ? prev_frame.total += current_frame.total : return
    if current_frame.frame_number != 2
      prev_frame.strike? && prev_prev_frame.strike? ? prev_prev_frame.total += current_frame.first_roll_score : return
    end
  end

  def add_spare_bonus
    current_frame, prev_frame = get_frames[:current], get_frames[:prev]
    prev_frame.spare? ? prev_frame.total += current_frame.first_roll_score : return
  end

  def setup_frames
    (NUMBER_OF_FRAMES - 1).times { |num| @frames << StandardFrame.new(num + 1) }
    @frames << LastFrame.new(10)
  end

end
