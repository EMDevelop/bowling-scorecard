require_relative './frame'

class Game

  NUMBER_OF_FRAMES = 10

  def initialize(frame = 0)
    @current_frame = frame
    @frames = Array.new
  end

  attr_accessor :frames

  def start_game 
    loop_frames
    # show_score
    gameover
  end

  private 

  def start_frame
    @frames[@current_frame].play
  end

  def show_scores

  end

  def loop_frames
    setup_frames
    while true do
      start_frame
      break if @current_frame == NUMBER_OF_FRAMES - 1
      @current_frame += 1
    end
  end

  def setup_frames
    10.times { |num| @frames << Frame.new(num + 1) }
  end

  def gameover
    p "Game Over"
  end

end
