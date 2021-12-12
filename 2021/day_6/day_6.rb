class Challenge
  attr_reader :input

  def initialize(input)
    @input = input.first.split(",").map(&:to_i)
  end

  def part_1
    80.times do |t|
      added = 0
      new_input = input.map do |x|
        if x > 0
          x - 1
        elsif x == 0
          added += 1
          6
        end
      end
      added.times { new_input << 8 }
      @input = new_input
    end

    input.size
  end

  def part_2
  end
end
