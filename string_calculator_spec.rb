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
  end
end
