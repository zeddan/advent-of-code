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
  end
end
