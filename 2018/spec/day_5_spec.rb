require_relative '../day_5/day_5'
require 'pry'

describe "day 5" do
  it "part 1" do
    challenge = Challenge.new
    expect(challenge.solve_part_1("aA")).to eql("".size)
    expect(challenge.solve_part_1("abBA")).to eql("".size)
    expect(challenge.solve_part_1("abAB")).to eql("abAB".size)
    expect(challenge.solve_part_1("aabAAB")).to eql("aabAAB".size)
    expect(challenge.solve_part_1("dabAcCaCBAcCcaDA")).to eql("dabCBAcaDA".size)
  end

  # it "part 2" do
  #   challenge = Challenge.new
  #   expect().to eql()
  # end
end
