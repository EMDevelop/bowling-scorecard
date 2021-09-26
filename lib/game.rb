require_relative './frame'

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

  def calculate_scores
    current_frame = @frames[@current_frame]
    # The below only tells you the score of the current frame
    current_frame.total = current_frame.first_roll_score + current_frame.second_roll_score
    # The below section handles bonuses
    handle_strike
  end

  def handle_strike
    current_frame = get_frames[:current]
    return if current_frame.frame_number == 1
    p "----- The current frame is #{current_frame.frame_number}"
    prev_stike_bonus
    # prev_prev_strike_bonus
    
  end

  def get_frames
    {
      :current => @frames[@current_frame], 
      :prev => @frames[@current_frame - 1], 
      :prev_prev => @frames[@current_frame - 2]
    }
  end

  def prev_stike_bonus
    current_frame, prev_frame = get_frames[:current], get_frames[:prev]
    # assuming that the current frame first isn't 10
    prev_frame.strike? ? prev_frame.total += current_frame.total : return

  end

  def setup_frames
    NUMBER_OF_FRAMES.times { |num| @frames << Frame.new(num + 1) }
  end

end
