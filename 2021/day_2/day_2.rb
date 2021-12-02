class Challenge
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def part_1
    x = 0
    y = 0

    input.each do |line|
      units = line[-1].to_i
      if line.start_with? "forward"
        x += units
      elsif line.start_with? "down"
        y += units
      elsif line.start_with? "up"
        y -= units
      end
    end

    x * y
  end

  def part_2
  end
end
