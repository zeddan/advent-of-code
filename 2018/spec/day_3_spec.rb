require_relative '../day_3/day_3'
require 'pry'

describe "day 3" do
  it "part 1" do
    challenge = Challenge.new
    input = ["#1 @ 1,3: 4x4", "#2 @ 3,1: 4x4", "#3 @ 5,5: 2x2"]
    expect(challenge.solve_part_1(input)).to eql(4)
  end

  xit "part 2" do
    challenge = Challenge.new
    expect().to eql()
  end
end
