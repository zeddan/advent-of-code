require 'set'

class Challenge

  def solve_part_1(input)
    points = input.reduce([]){ |total, claim| total + area(claim) }
    points.group_by(&:itself).select{ |k,v| v.size > 1 }.map(&:first).length
  end

  def solve_part_2(input)
  end

  private

  def area(s)
    x,y = s.scan(/[0-9]+,[0-9]+/).first.split(",").map(&:to_i)
    w,h = s.scan(/[0-9]+x[0-9]+/).first.split("x").map(&:to_i)
    ((x...x+w).to_a).product((y...y+h).to_a)
  end

end
