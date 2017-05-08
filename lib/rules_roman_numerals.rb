require 'pry-byebug'

class RomanNumeralsRules
  attr_reader :symbols

  def initialize symbols
    @symbols = symbols
  end

  def validate_symbols_repeated
    counting_symbols
  end

  private
  def counting_symbols(qtd_limit_sym = 3)
    qtd_sym_repeated = 0
    @symbols.split('').map do |sym|
      return false if qtd_sym_repeated > qtd_limit_sym
      if sym.eql?('I') || sym.eql?('X') || sym.eql?('C') || sym.eql?('M')
        qtd_sym_repeated += 1
      end
      return false if qtd_sym_repeated > qtd_limit_sym
    end
  end

end
