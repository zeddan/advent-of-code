class Challenge
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def part_1
    pairs = input.map { |l| l.split("->").map(&:strip) }.select do |l|
      z = l.join(",").split(",")
      z[0] == z[2] || z[1] == z[3]
    end
    points = Hash.new { |k,v| k[v] = 0 }
    pairs.each do |pair|
      split = pair.map { |p| p.split(",")}.flatten
      if split[0] == split[2]
        y1 = split[1].to_i
        y2 = split[3].to_i
        ([y1,y2].min..[y1,y2].max).each { |z| points["#{split[0]},#{z}"] += 1 }
      else
        x1 = split[0].to_i
        x2 = split[2].to_i
        ([x1,x2].min..[x1,x2].max).each { |z| points["#{z},#{split[1]}"] += 1 }
      end
    end
    points.select { |k,v| v >= 2}.size
  end

  def part_2
  end
end
