class Challenge
  attr_reader :input

  def initialize(input)
    @input = input[0]
  end

  def part_1
    idx = 0
    searching = true
    while searching
      if input[idx...idx+4].chars.uniq.size == 4
        searching = false
      else
        idx += 1
      end
    end
    idx+4
  end

  def part_2
  end
end
