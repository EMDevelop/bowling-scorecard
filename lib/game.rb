class Game

  NUMBER_OF_FRAMES = 10
  
  def self.start_game 
    @current_frame = 1
    while true
      break if @current_frame = NUMBER_OF_FRAMES
      start_frame
      @current_frame += 1
    end
    gameover
  end

  def self.start_frame
    p "hello"
  end

  def self.gameover
    p "Game Over"
    exit
  end

  private_class_method :start_frame, :gameover


end
