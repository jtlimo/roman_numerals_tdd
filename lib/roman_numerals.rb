require 'pry-byebug'

class RomanNumerals
  attr_reader :symbols

  DEFAULT_VALUES = {
                    'I' => 1, 'V' => 5, 'X' => 10,
                    'L' => 50, 'C' => 100,
                    'D' => 500, 'M' => 1000
                    }

  def initialize(symbols, rules: RomanNumeralsRules.new(symbols))
    @symbols = symbols
    @rules =  rules
  end

  def get_arabic_numeral
    match
    @valid = validate_symbols
    subtract_numbers @match_numbers if @valid
    sum_numbers if @valid
    @valid ? @match_numbers : @match_numbers = 'Invalid numeral'
  end


  private
  def match
    @match_numbers = []
    symbols.split('').map { |syms| @match_numbers << DEFAULT_VALUES[syms]}
    @match_numbers
  end

  private
  def sum_numbers
     @match_numbers = @match_numbers.inject(:+) if @match_numbers.is_a?(Array)
     @match_numbers
  end

  private
  def subtract_numbers values
    values.each_index do |index|
      next_index = index + 1
      return values if values[next_index].nil?
      sub_numbers index, next_index if values[next_index] > values[index]
    end
  end

  private
  def sub_numbers actual_index, next_index
    @match_numbers = @match_numbers[next_index] - @match_numbers[actual_index]
  end

  private
  def validate_symbols
    @rules.validate_symbols_repeated
  end

end
