class Challenge
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def part_1
    start = [0,0,0,0,0,0,0,0,0,0,0,0]

    input.each do |line|
      line.size.times do |i|
        start[i] += line[i].to_i
      end
    end

    gamma = start.map do |bit|
      bit > 500 ? 1 : 0
    end.join.to_i(2)

    epsilon = start.map do |bit|
      bit < 500 ? 1 : 0
    end.join.to_i(2)

    gamma * epsilon
  end

  def part_2
  end
end
