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

    it "return the sum of begin with comma & multi comma seperated and multiple new line string" do
      expect(calculator.add(",1\n2,3,4\n5\n6")).to eq(21)
    end

    it "return the sum of multi comma seperated and multiple new line with end comma seperated string" do
      expect(calculator.add("1\n2,3,4\n5\n6,")).to eq(21)
    end

    it "return the sum of multi comma seperated and multiple new line with end new line seperated string" do
      expect(calculator.add("1,2,3,4\n5,6\n")).to eq(21)
    end

    it "return the sum of multi comma seperated and multiple new line with begin & end new line seperated string" do
      expect(calculator.add("\n1,2,3,4\n5,6\n")).to eq(21)
    end

    it "return the sum of multi comma seperated and multiple new line with begin & end comma seperated string" do
      expect(calculator.add(",1,2,3,4\n5\n6,")).to eq(21)
    end

    it "return the sum of multi comma seperated and multiple new line with begin with comma & end with new line seperated string" do
      expect(calculator.add(",1,2,3,4\n5,6\n")).to eq(21)
    end

    it "return the sum of multi comma seperated and multiple new line with begin with new line & end with comma seperated string" do
      expect(calculator.add("\n1,2,3,4\n5,6,")).to eq(21)
    end

    it "return the sum from support different delimiters" do
      expect(calculator.add("//;\n1;2")).to eq(3)
    end

    it "return negtaives not allowed when pass a negative number in the string" do
      expect { (calculator.add("1\n-2,3")) }.to raise_error("Negative numbers not allowed: -2")
    end

    it "return negtaives not allowed when pass multiple negative number in the string" do
      expect { (calculator.add("1\n-2,3\n-4,5")) }.to raise_error("Negative numbers not allowed: -2, -4")
    end

    it "return negtaives not allowed when pass a negative number in the string" do
      expect { (calculator.add("//;\n1;-2;3")) }.to raise_error("Negative numbers not allowed: -2")
    end

    it "return negtaives not allowed when pass a negative number in the string" do
      expect { (calculator.add("//;\n1;-2;3")) }.to raise_error("Negative numbers not allowed: -2")
    end
  end
end
