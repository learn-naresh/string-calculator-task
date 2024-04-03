require_relative 'string_calculator'

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe "#add" do
    it "returns 0 for an empty string" do
      expect(calculator.add("")).to eq(0)
    end

    it "returns the number itself for a single number string" do
      expect(calculator.add("1")).to eq(1)
    end

    it "returns the sum of two numbers separated by a comma" do
      expect(calculator.add("1,5")).to eq(6)
    end

    it "allows new lines between numbers and calculates the sum" do
      expect(calculator.add("1\n2,3")).to eq(6)
    end

    it "raises an exception for invalid input containing comma and newline without a number in between" do
      expect { calculator.add("1,\n") }.to raise_error("Invalid input")
    end

    it "supports custom delimiters and calculates the sum" do
      expect(calculator.add("//;\n1;2")).to eq(3)
    end

    it "Using & as a delimiters and calculating the sum" do
      expect(calculator.add("//&\n1&2")).to eq(3)
    end

    it "raises an exception for negative numbers" do
      expect { calculator.add("1,-2,3,-4") }.to raise_error("Negative numbers not allowed: -2,-4")
    end
  end
end
