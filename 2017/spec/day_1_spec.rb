require_relative '../day_1/day_1'
require 'pry'

describe "day 1" do
  it "" do
    challenge = Challenge.new
    expect(challenge.solution("1122")).to eql(3)
    expect(challenge.solution("1111")).to eql(4)
    expect(challenge.solution("1234")).to eql(0)
    expect(challenge.solution("91212129")).to eql(9)
  end
end
