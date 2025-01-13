require 'rails_helper'

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe "#add" do
    it "return 0 for an empty string" do
      expect(calculator.add("")).to eq(0)
    end

    it "return 11 for an '11' string" do
      expect(calculator.add("11")).to eq(11)
    end

    it "return the sum of two numbers" do
      expect(calculator.add("1,33")).to eq(34)
    end

    it "return the sum of unknown number of input" do
      expect(calculator.add("1,2,3,3,5")).to eq(14)
    end

    it "return the sum of unknown number of input" do
      expect(calculator.add("1\n2\n3\n3\n5")).to eq(14)
    end

    it "return the sum of single new line & single comma seperated string" do
      expect(calculator.add("1\n2,6")).to eq(9)
    end

    it "return the sum of multiple new line & multiple comma seperated string" do
      expect(calculator.add("1\n1,2,3\n5\n6\n7")).to eq(25)
    end
  end
end
