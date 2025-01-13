require 'rails_helper'

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe "#add" do
    it "return 0 for an empty string" do
      expect(calculator.add("")).to eq(0)
    end
  end
end
