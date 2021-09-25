class Game

  NUMBER_OF_FRAMES = 10
  
  def start_game 
    @current_frame = 1
    while true
      break if @current_frame = NUMBER_OF_FRAMES
      start_frame
      @current_frame += 1
    end
    gameover
  end

  private 

  def start_frame
    p "hello"
  end

  def gameover
    p "Game Over"
    exit
  end

end
