require 'set'

class Challenge

  def solve_part_1(input)
    input.reduce(0){ |sum, n| sum += n.to_i }
  end

  def solve_part_2(input)
    sum = 0
    freqs = Set.new
    input.cycle do |n|
      freqs << sum
      sum += n.to_i
      return sum if freqs.include? sum
    end
  end

end
