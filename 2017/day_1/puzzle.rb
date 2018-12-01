require_relative 'day_1'
input = File.open('input.txt', "r") { |f| f.first.strip }
puts Challenge.new.solution(input)
