class Robot
  attr_accessor :power

  def initialize(power)
    @power = power
  end

  def move_forward
    @power = 0

    if @power > 0
      puts '開始往前走'
    else
      puts '沒電了'
    end
  end

  def move_backward
    if @power > 0
      puts '開始往後走'
    else
      puts '沒電了'
    end
  end
end

robot1 = Robot.new 1.0

puts robot1.power
