class Challenge

  def solution(input)
    @input = input.each_char.map(&:to_i)
    @input.each_with_index.reduce(0) do |sum, (num, idx)|
      next_num(idx) == num ? (sum += num) : sum
    end
  end

  private

  def next_num(idx)
    @input[(idx + 1) % @input.length]
  end

end
