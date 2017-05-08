# encoding: UTF-8

require "spec_helper"
require "roman_numerals"
require "rules_roman_numerals"

describe RomanNumerals do
  describe "#get_arabic_numeral" do
    context "simple roman numeral conversion to arabic numeral" do
      it "convert roman numerals to arabic numerals" do
        roman_numerals  = RomanNumerals.new('I')
        arabic_number = roman_numerals.get_arabic_numeral
        expect(arabic_number).to eq 1
      end
    end
  end
end

describe RomanNumerals do
  describe "#get_arabic_numeral" do
      it "sums arabics numbers" do
        roman_numerals  = RomanNumerals.new('II')
        arabic_number = roman_numerals.get_arabic_numeral
        expect(arabic_number).to eq 2
      end
  end
end

describe RomanNumerals do
  describe "#get_arabic_numeral" do
    context "subtracting highest values from minimal" do
      it "subtract roman numerals" do
        roman_numerals  = RomanNumerals.new('IV')
        arabic_number = roman_numerals.get_arabic_numeral
        expect(arabic_number).to eq 4
      end
    end
  end
end

describe RomanNumerals do
  describe "#get_arabic_numeral" do
    context "rules of roman numerals" do
      it "symbols not repeated for more than three times" do
          roman_numerals = RomanNumerals.new('IIII')
          arabic_number = roman_numerals.get_arabic_numeral
          expect(arabic_number).to eq 'Invalid numeral'
      end
    end
  end
end
