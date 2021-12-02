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
    increases = 0

    input[0...-3].each.with_index(4) do |line, i|
      window_1 = input[i-2] + input[i-3] + input[i-4]
      window_2 = input[i-1] + input[i-2] + input[i-3]
      if window_2 > window_1
        increases += 1
      end
    end

    increases
  end
end
