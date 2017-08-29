require 'bathroom_challenge'

describe "#up" do
  it "subtracts 3 from num if num is greater than or equal to 4 and less than or equal to 9" do
    expect(up(5)).to eq(2)
  end
end

describe "#down" do
  it "adds 3 to num if num is greater than or equal to 1 and less than or equal to 6" do
    expect(down(3)).to eq(6)
  end
end

describe "#left" do
  it "subtracts 1 to num if num is not equal to 1, 4, or 7" do
    expect(left(9)).to eq(8)
    expect(left(7)).to eq(7)
  end
end

describe "#right" do
  it "adds 1 to num if num is not equal to 3, 6, or 9" do
    expect(right(9)).to eq(9)
    expect(right(1)).to eq(2)
  end
end

describe "#unlock" do
  it "given an array of arrays, returns the correct code" do
    expect(unlock([["U", "L", "L"], ["R", "R", "D", "D", "D"], ["L", "U", "R", "D", "L"], ["U", "U", "U", "U", "D"]])).to eq(1985)
  end
end

