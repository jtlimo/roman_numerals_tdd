require 'pry-byebug'

# class rules of roman numerals
class RomanNumeralsRules
  REPEATED_SYMBOLS_RULE = /[iIxXmMcC]/
  NEVER_BE_REPEATED_AND_SUB_RULE = /[dDlLvV]/

  attr_reader :symbols

  def initialize(symbols)
    @symbols = symbols
  end

  def validate_symbols_repeated
    counting_symbols
  end

  private

  def counting_symbols(qtd_limit_sym = 3)
    qtd_sym_repeated = 0
    syms = @symbols.split('')
    syms.map.with_index do |actual_sym, index|
      next_sym = syms[index + 1]
      return false if qtd_sym_repeated >= qtd_limit_sym
      if next_sym.eql?(actual_sym) && actual_sym.match(REPEATED_SYMBOLS_RULE)
        qtd_sym_repeated += 1
      end
      return false if qtd_sym_repeated >= qtd_limit_sym
    end
  end
end
