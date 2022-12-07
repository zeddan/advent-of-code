class Challenge
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def part_1
    require "byebug"

    cd = []
    dirs = Hash.new { |h,k| h[k] = {dirs: [], size: 0} }
    input.each do |output|
      a,b,c = output.split(" ")
      if a == "$"
        if b == "cd"
          if c == ".."
            cd.pop
            next
          else
            cd << c
          end
        elsif b == "ls"
          next
        end
      else
        if a == "dir"
          dirs[cd[-1]][:dirs] << b
        else
          dirs[cd[-1]][:size] += a.to_i
        end
      end
    end

    dirs.map do |dir|
      dir[1][:size] + dir[1][:dirs].map { |sub_dir| find_sum(dirs, sub_dir)}.sum
    end.select { |v| v <= 100000 }.sum
  end

  def part_2
  end

  def find_sum(dirs, dir)
    return dirs[dir][:size] if dirs[dir][:dirs].empty?

    dirs[dir][:size] + dirs[dir][:dirs].map do |sub_dir|
      find_sum(dirs, sub_dir)
    end.sum
  end
end
