class Challenge
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def part_1
    input.map do |i|
      common = i.chars[0...i.size/2] & i.chars[i.size/2..-1]
      letter = common[0]
      letter == letter.upcase ? letter.ord-38 : letter.ord-96
    end.sum
  end

  def part_2
    idx = 0
    sum = 0
    while idx < input.size/3
      s = input[idx*3...3+idx*3]
      common = s[0].chars & s[1].chars & s[2].chars
      letter = common[0]
      sum += letter == letter.upcase ? letter.ord-38 : letter.ord-96
      idx += 1
    end
    sum
  end
end
