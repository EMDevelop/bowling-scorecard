require_relative './frame'

class Game

  NUMBER_OF_FRAMES = 10

  def initialize(frame = 0)
    @current_frame = frame
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
    @frames.each { |frame| 
      p frame
      @total << frame.total
    }
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
    current_frame.total = current_frame.first_roll_score + current_frame.second_roll_score
  end


  def setup_frames
    NUMBER_OF_FRAMES.times { |num| @frames << Frame.new(num + 1) }
  end


end
