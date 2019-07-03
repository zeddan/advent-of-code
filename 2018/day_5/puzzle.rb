require_relative 'day_5'

input = File.open('input.txt', 'r') { |f| f.map(&:strip) }.first
challenge = Challenge.new

puts "Part 1: #{challenge.solve_part_1(input)}"
# puts "Part 2: #{challenge.solve_part_2(input)}"
