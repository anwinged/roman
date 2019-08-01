require "./spec_helper"

NUMBERS = {
     1 => "i",
     3 => "iii",
     4 => "iv",
     5 => "v",
    94 => "xciv",
  3999 => "mmmcmxcix",
}

BAD_ROMAN_NUMBERS = [
  "iiii",
  "iiv",
  "vx",
  "qwerty",
]

describe Roman do
  NUMBERS.each do |d, r|
    it "can convert int #{d} to roman #{r}" do
      Roman.encode(d).should eq r
    end
  end

  NUMBERS.each do |d, r|
    it "can convert roman #{r} to int #{d}" do
      Roman.decode(r).should eq d
    end
  end

  NUMBERS.each do |d, r|
    it "can test roman #{r} is true" do
      Roman.roman?(r).should be_true
    end
  end

  BAD_ROMAN_NUMBERS.each do |r|
    it "can test roman #{r} is false" do
      Roman.roman?(r).should be_false
    end
  end
end
