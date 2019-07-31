require "./spec_helper"

NUMBERS = {
  1 => "I",
  5 => "V",
}

describe Roman do
  # TODO: Write tests

  NUMBERS.each do |d, r|
    it "can convert int #{d} to roman #{r}" do
      Roman.encode(d).should eq r
    end
  end
end
