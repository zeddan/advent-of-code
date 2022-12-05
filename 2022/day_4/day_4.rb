class Challenge
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def part_1
    overlaps = 0
    input.map do |pairs|
      p1,p2 = pairs.split(",")
      p11,p12 = p1.split("-")
      p21,p22 = p2.split("-")
      r1 = (p11.to_i..p12.to_i).to_a
      r2 = (p21.to_i..p22.to_i).to_a
      overlap = r1 & r2
      overlaps += 1 if overlap.size == r1.size || overlap.size == r2.size
    end
    overlaps
  end

  def part_2
  end
end
