class Challenge
  attr_reader :input

  def initialize(input)
    @input = input[0].split(",").map(&:to_i)
  end

  def part_1
    input.uniq.map { |i| input.map { |j| (j-i).abs }.sum }.min
  end

  def part_2
    input.min.upto(input.max).map { |j| input.map { |i| (i-j).abs * ((i-j).abs + 1) / 2}.sum }.min
  end
end
