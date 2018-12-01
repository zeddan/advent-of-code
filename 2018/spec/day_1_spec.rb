require_relative '../day_1/day_1'
require 'pry'

describe "day 1" do
  it "part 2" do
    challenge = Challenge.new
    expect(challenge.solve_part_2(["+1", "-1"])).to eql(0)
    expect(challenge.solve_part_2(["+3", "+3", "+4", "-2", "-4"])).to eql(10)
    expect(challenge.solve_part_2(["-6", "+3", "+8", "+5", "-6"])).to eql(5)
    expect(challenge.solve_part_2(["+7", "+7", "-2", "-7", "-4"])).to eql(14)
  end
end
