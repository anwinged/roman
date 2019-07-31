require "./spec_helper"

NUMBERS = {
     1 => "i",
     3 => "iii",
     4 => "iv",
     5 => "v",
    94 => "xciv",
  3999 => "mmmcmxcix",
}

describe Roman do
  # TODO: Write tests

  NUMBERS.each do |d, r|
    it "can convert int #{d} to roman #{r}" do
      Roman.encode(d).should eq r
    end
  end
end
