class Luhn
  MORE_THAN_DOUBLE_FIGURES = /\A\d{2,}\z/
  SUM_DIVISOR = 10
  TWO_DIGIT_BOUNDARY = 10

  def self.valid?(num)
    new(num).valid?
  end

  def initialize(num)
    @num = num.delete(' ')
  end

  def valid?
    (sum_total % SUM_DIVISOR).zero? && num.match?(MORE_THAN_DOUBLE_FIGURES)
  end

  private

  attr_reader :num

  def digits
    @digits ||= num.reverse.each_char.map(&:to_i)
  end

  def sum_total
    @total ||= digits.each_slice(2).sum { |first_digit, last_digit = 0| first_digit + double(last_digit) }
  end

  def double(last_digit)
    (num = last_digit * 2) < TWO_DIGIT_BOUNDARY ? num : num - 9
  end
end
