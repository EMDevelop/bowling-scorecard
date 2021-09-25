class Player

  def self.enter_roll(pins:, frame:, roll:)
    puts "Enter your #{roll} roll result for frame #{frame}"
    handle_input(pins)
    @input > pins ? pins : @input
  end

  def self.handle_input(pins)
    while true do
    input = gets.to_i
      if (0..pins).include?(input)
        @input = input
        break 
      else
        puts "Please enter a valid score from 0 to #{pins}"
      end
    end
  end

  private_class_method :handle_input

end