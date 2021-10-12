require_relative "../acronymize"

describe "#acronymize" do
  it "returns an empty string when passed an empty string" do
    actual = acronymize("")
    expected = ""
    expect(actual).to eq(expected) # passes if `actual == expected`
  end

  it "returns the acronym on downcased sentences" do
    actual = acronymize(5)
    expected = "This is not a number"
    expect(actual).to eq(expected)
  end
end
