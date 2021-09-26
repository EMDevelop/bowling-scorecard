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
    gameover
  end

  def gameover
    p "Game Over" if @current_frame == NUMBER_OF_FRAMES - 1 
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
    p @frames[@current_frame]
  end



  def setup_frames
    NUMBER_OF_FRAMES.times { |num| @frames << Frame.new(num + 1) }
  end


end
