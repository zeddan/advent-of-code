class Challenge
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def part_1
    max = 0
    count = 0
    input.each do |num|
      count += num.to_i
      if num == ""
        if count > max
          max = count
        end
        count = 0
      end
    end
    max
  end

  def part_2
  end
end
