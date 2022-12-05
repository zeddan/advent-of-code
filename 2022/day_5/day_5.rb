class Challenge
  attr_reader :input

  STACKS = {
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

  def initialize(input)
    @input = input
  end

  def part_1
    input[10..-1].map do |moves|
      move,from,to=moves.scan(/\d+/)
      move.to_i.times { STACKS[to] << STACKS[from].pop }
    end
    STACKS.map { |k,v| v.last }.join
  end

  def part_2
  end
end
