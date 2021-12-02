class Challenge
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def part_1
    increases = 0

    input[0...-1].each.with_index(1) do |line, i|
      if input[i] > input[i - 1]
        increases += 1
      end
    end

    increases
  end

  def part_2
  end
end
