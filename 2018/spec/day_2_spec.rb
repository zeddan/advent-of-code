require_relative '../day_2/day_2'
require 'pry'

describe "day 2" do
  it "part 1" do
    challenge = Challenge.new
    expect(challenge.count_letters("abcdef")).to eql([0,0])
    expect(challenge.count_letters("bababc")).to eql([1,1])
    expect(challenge.count_letters("abbcde")).to eql([1,0])
    expect(challenge.count_letters("abcccd")).to eql([0,1])
    expect(challenge.count_letters("aabcdd")).to eql([1,0])
    expect(challenge.count_letters("abcdee")).to eql([1,0])
    expect(challenge.count_letters("ababab")).to eql([0,1])
    input = %w(abcdef bababc abbcde abcccd aabcdd abcdee ababab)
    expect(challenge.solve_part_1(input)).to eql(12)
  end

  it "part 2" do
    challenge = Challenge.new
    input = %w(abcde fghij klmno pqrst fguij axcye wvxyz) 
    expect(challenge.solve_part_2(input)).to eql("fgij")
  end
end
