class Player

  def self.enter_roll(remaining_pins, frame_number, roll_number)
    puts "Enter your #{roll_number} roll result for frame #{frame_number}"
    input = gets.to_i
    input > remaining_pins ? remaining_pins : input
  end

end