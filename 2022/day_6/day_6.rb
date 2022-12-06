class Challenge
  attr_reader :input

  def initialize(input)
    @input = input[0]
  end

  def part_1
    scan(4)
  end

  def part_2
    scan(14)
  end

  def scan(m_size)
    idx = 0
    searching = true
    while searching
      if input[idx...idx+m_size].chars.uniq.size == m_size
        searching = false
      else
        idx += 1
      end
    end
    idx+m_size
  end
end
