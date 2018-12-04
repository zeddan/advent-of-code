class Challenge

  def solve_part_1(input)
    overlap(input).length
  end

  def solve_part_2(input)
    overlap = overlap(input)
    input.each { |i| return i if (area(i) & overlap).empty? }
  end

  private

  def overlap(points)
    points.reduce([]){ |total, claim| total + area(claim) }
          .group_by(&:itself)
          .select{ |k,v| v.size > 1 }
          .map(&:first)
  end

  def area(s)
    x,y = s.scan(/[0-9]+,[0-9]+/).first.split(",").map(&:to_i)
    w,h = s.scan(/[0-9]+x[0-9]+/).first.split("x").map(&:to_i)
    ((x...x+w).to_a).product((y...y+h).to_a)
  end

end
