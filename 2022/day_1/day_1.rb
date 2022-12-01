class Challenge
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def part_1
    find_max
  end

  def part_2
    max1 = find_max
    max2 = find_max(max1)
    max3 = find_max(max2)
    max1+max2+max3
  end

  def find_max(current=100000)
    max = 0
    count = 0
    input.each do |num|
      count += num.to_i
      if num == ""
        if count > max && count < current
          max = count
        end
        count = 0
      end
    end
    max
  end
end
