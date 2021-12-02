require_relative 'day_1'

input = File.open('input.txt', 'r') { |f| f.map { |l| l.strip.to_i } }
challenge = Challenge.new(input)

puts "Part 1: #{challenge.part_1}"
puts "Part 2: #{challenge.part_2}"
