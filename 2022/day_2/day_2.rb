class Challenge
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def part_1
    games = input.map(&:split)

    they = {"A"=>1, "B"=>2, "C"=>3}
    me = {"X"=>1, "Y"=>2, "Z"=>3}

    results = games.map do |game|
      their_draw = they[game[0]]
      my_draw = me[game[1]]

      outcome = their_draw - my_draw

      if outcome == 0
        3 + my_draw
      elsif outcome == -1
        6 + my_draw
      elsif outcome == -2
        my_draw
      elsif outcome == 1
        my_draw
      elsif outcome == 2
        6 + my_draw
      end
    end

    results.sum
  end

  def part_2
  end
end
