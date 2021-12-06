class Challenge
  attr_reader :input, :drawn

  def initialize(input)
    @input = input
  end

  def part_1
    numbers = input.first.split(",")
    @drawn = (0...5).map { |i| numbers.delete_at(i) }
    boards = generate_boards
    won = false
    winning_board = []
    until won
      drawn << numbers.delete_at(0)
      boards.each do |board|
        won = row_win?(board) || col_win?(board)
        winning_board = board if won
        break if won
      end
    end
    calculate_score(winning_board)
  end

  def part_2
  end

  private

  def generate_boards
    boards = []
    100.times do |i|
      boards << input[i*6+2..i*6+6].map(&:split)
    end
    boards
  end

  def row_win?(board)
    board.any? do |row|
      (row & drawn).size == 5
    end
  end

  def col_win?(board)
    col = []
    (0...5).each do |i|
      col << board[0][i]
      col << board[1][i]
      col << board[2][i]
      col << board[3][i]
      col << board[4][i]
      return true if (col & drawn).size == 5
      col = []
    end
    false
  end

  def calculate_score(board)
    sum_of_unmarked_numbers(board) * drawn[-1].to_i
  end

  def sum_of_unmarked_numbers(board)
    (board.flatten - drawn).map(&:to_i).sum
  end
end
