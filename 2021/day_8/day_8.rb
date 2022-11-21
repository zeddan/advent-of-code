class Challenge
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def part_1
    letters = input.map { |i| i.split(" | ") }.map { |i| i[1] }
    count = Hash.new { |k,v| k[v] = 0 }
    lengths = {2=>1,4=>4,3=>7,7=>8}
    letters.each { |combo| combo.split(" ").map { |l| count[lengths[l.size].to_i] += 1 } }
    count[1] + count[4] + count[7] + count[8]
  end

  def part_2
  end
end
