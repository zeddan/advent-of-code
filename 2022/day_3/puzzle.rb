require_relative "day_3"

input = File.open(ARGV[0] || "input.txt", "r") { |f| f.map(&:strip) }
challenge = Challenge.new(input)

puts "Part 1: #{challenge.part_1}"
puts "Part 2: #{challenge.part_2}"
