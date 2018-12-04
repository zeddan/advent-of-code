require_relative 'day_4'
require 'pry_debug'

input = File.open('input.txt', 'r') { |f| f.map(&:strip) }
challenge = Challenge.new

puts "Part 1: #{challenge.solve_part_1(input)}"
