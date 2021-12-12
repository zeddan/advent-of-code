class Challenge
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def part_1
    pairs = input.map { |l| l.split(" -> ") }.select do |l|
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
    points = Hash.new { |k,v| k[v] = 0 }

    straight = input.map { |l| l.split(" -> ") }.select do |l|
      z = l.join(",").split(",")
      z[0] == z[2] || z[1] == z[3]
    end

    diagonal = input.map { |l| l.split(" -> ") }.reject do |l|
      z = l.join(",").split(",")
      z[0] == z[2] || z[1] == z[3]
    end

    straight.each do |pair|
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

    diagonal.each do |pair|
      split = pair.map { |p| p.split(",")}.flatten
      x1 = split[0].to_i
      y1 = split[1].to_i
      x2 = split[2].to_i
      y2 = split[3].to_i
      if x1 > x2 && y1 < y2
        d = ([y1,y2].min..[y1,y2].max).to_a.zip ([x1,x2].min..[x1,x2].max).to_a.reverse
      elsif x1 > x2 && y1 > y2
        d = ([y1,y2].min..[y1,y2].max).to_a.zip ([x1,x2].min..[x1,x2].max).to_a
      elsif x1 < x2 && y1 < y2
        d = ([y1,y2].min..[y1,y2].max).to_a.zip ([x1,x2].min..[x1,x2].max).to_a
      else
        d = ([y1,y2].min..[y1,y2].max).to_a.zip ([x1,x2].min..[x1,x2].max).to_a.reverse
      end
      d.each { |x,y| points["#{y},#{x}"] += 1 }
    end

    points.select { |k,v| v >= 2}.size
  end
  
  def visualize(points)
    a = Array.new(10) { Array.new(10) { 0 } } if input.size == 10
    a = Array.new(1000) { Array.new(1000) { 0 } } if input.size == 500
    points.each do |k,v|
      x, y = k.split(",").map(&:to_i)
      a[y][x] = v
    end
    a.each_with_index do |row, i|
      row.each_with_index do |col, j|
        print a[i][j] > 0 ? a[i][j] : "."
        puts "\n" if j == 9
      end
    end
  end
end
