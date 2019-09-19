class Luhn
  class << self
    def valid?(digits)
      reversed_digits = digits.reverse.gsub(/\s/, '')
      return false unless reversed_digits.match?(TWO_OR_MORE_DIGITS)

      adjusted_digits = reversed_digits.chars.each_with_index.inject([]) { |ary, (digit, idx)| ary << adjust_num(digit, idx) }
      verify_digits(adjusted_digits)
    end

    private

    TWO_OR_MORE_DIGITS = /\A\d{2,}\z/

    def adjust_num(digit, idx)
      idx.even? ? digit.to_i : doubled_num(digit)
    end

    def doubled_num(digit)
      (num = digit.to_i * 2) > 9 ? num - 9 : num
    end

    def verify_digits(adjusted_digits)
      (adjusted_digits.sum % 10).zero? && is_more_than_double_or_nonzero?(adjusted_digits)
    end

    def is_more_than_double_or_nonzero?(adjusted_digits)
      adjusted_digits.length > 1 || adjusted_digits.sum.nonzero?
    end
  end
end
