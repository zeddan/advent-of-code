class Challenge
  require "set"

  attr_reader :input

  def initialize(input)
    @input = input
  end

  class Directory
    attr_accessor :name, :dirs, :size

    def initialize(name)
      @name = name
      @dirs = Set.new
      @size = 0
    end

    def find_size
      return size if dirs.empty?

      size + dirs.map do |sub_dir|
        sub_dir.find_size
      end.sum
    end
  end

  def part_1
    cd = []
    dirs = Set.new
    input.each do |output|
      a,b,c = output.split(" ")
      if a == "$"
        if b == "cd"
          if c == ".."
            cd.pop
            next
          else
            dir = cd[-1]&.dirs&.find { |d| d.name == c } || Directory.new(c)
            cd << dir
            dirs << dir
          end
        elsif b == "ls"
          next
        end
      else
        if a == "dir"
          cd[-1].dirs << Directory.new(b)
        else
          cd[-1].size += a.to_i
        end
      end
    end

    dirs.map(&:find_size).select { |v| v <= 100000 }.sum
  end

  def part_2
  end
end
