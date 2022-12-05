class Challenge
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def part_1
    stacks = {
      "1"=>%w(B Z T),
      "2"=>%w(V H T D N),
      "3"=>%w(B F M D),
      "4"=>%w(T J G W V Q L),
      "5"=>%w(W D G P V F Q M),
      "6"=>%w(V Z Q G H F S),
      "7"=>%w(Z S N R L T C W),
      "8"=>%w(Z H W D J N R M),
      "9"=>%w(M Q L F D S)
    }

    input[10..-1].map do |moves|
      move,from,to=moves.scan(/\d+/)
      move.to_i.times { stacks[to] << stacks[from].pop }
    end

    stacks.map { |k,v| v.last }.join
  end

  def part_2
    stacks = {
      "1"=>%w(B Z T),
      "2"=>%w(V H T D N),
      "3"=>%w(B F M D),
      "4"=>%w(T J G W V Q L),
      "5"=>%w(W D G P V F Q M),
      "6"=>%w(V Z Q G H F S),
      "7"=>%w(Z S N R L T C W),
      "8"=>%w(Z H W D J N R M),
      "9"=>%w(M Q L F D S)
    }

    input[10..-1].map do |moves|
      move,from,to=moves.scan(/\d+/)
      stacks[to] += stacks[from][-move.to_i..-1]
      move.to_i.times { stacks[from].pop }
    end

    stacks.map { |k,v| v.last }.join
  end
end
