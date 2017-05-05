# encoding: UTF-8

require "spec_helper"
require "roman_numerals"

describe RomanNumerals do
  describe "#convert" do
    context "simple roman numeral conversion to arabic numeral" do
      it "convert roman numerals to arabic numerals" do
        roman_numerals  = RomanNumerals.new('I')
        arabic_number = roman_numerals.convert
        expect(arabic_number).to eq 1
      end
    end
  end
end

describe RomanNumerals do
  describe "#convert" do
      it "sums arabics numbers" do
        roman_numerals  = RomanNumerals.new('II')
        arabic_number = roman_numerals.convert
        expect(arabic_number).to eq 2
      end
  end
end

describe RomanNumerals do
  describe "#convert" do
    context "subtracting highest values from minimal" do
      it "subtract roman numerals" do
        roman_numerals  = RomanNumerals.new('IV')
        arabic_number = roman_numerals.convert
        expect(arabic_number).to eq 4
      end
    end
  end
end
