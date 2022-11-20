class Challenge
  attr_reader :input

  def initialize(input)
    @input = input.first.split(",").map(&:to_i)
  end

  def part_1
    solve(80)
  end

  def part_2
    solve(256)
  end

  def solve(days)
    state = {0=>0,1=>0,2=>0,3=>0,4=>0,5=>0,6=>0,7=>0,8=>0}
    input.group_by(&:itself).transform_values { |v| v.size }.each { |k,v| state[k] = v }
    days.times do |t|
      tmp = state.dup
      state[0] = tmp[1]
      state[1] = tmp[2]
      state[2] = tmp[3]
      state[3] = tmp[4]
      state[4] = tmp[5]
      state[5] = tmp[6]
      state[6] = tmp[0] + tmp[7]
      state[7] = tmp[8]
      state[8] = tmp[0]
    end
    state.map { |k,v| v }.sum
  end
end
