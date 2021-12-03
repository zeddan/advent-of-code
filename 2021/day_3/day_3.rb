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
    oxygen * co2
  end
  
  private

  def oxygen
    start = [0,0,0,0,0,0,0,0,0,0,0,0]
    numbers = input

    ones = []
    zeros = []

    start.size.times do |i|
      numbers.each do |line|
        if line[i] == "1"
          ones << line
        else
          zeros << line
        end
      end

      if ones.size >= zeros.size
        numbers = ones
      else
        numbers = zeros
      end

      ones = []
      zeros = []

      return numbers.join.to_i(2) if numbers.size == 1
    end

    numbers.join.to_i(2)
  end

  def co2
    start = [0,0,0,0,0,0,0,0,0,0,0,0]
    numbers = input

    ones = []
    zeros = []

    start.size.times do |i|
      numbers.each do |line|
        if line[i] == "1"
          ones << line
        else
          zeros << line
        end
      end

      if ones.size >= zeros.size
        numbers = zeros
      else
        numbers = ones
      end

      ones = []
      zeros = []

      return numbers.join.to_i(2) if numbers.size == 1
    end

    numbers.join.to_i(2)
  end
end
