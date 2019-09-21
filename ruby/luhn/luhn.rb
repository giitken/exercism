class Luhn
  attr_reader :digits

  def initialize(digits)
    @digits = digits.reverse.gsub(/\s/, '')
  end

  def valid?
    return false unless digits.match?(TWO_OR_MORE_DIGITS)

    (sum_total % 10).zero? && is_more_than_double?
  end

  def self.valid?(digits)
    new(digits).valid?
  end

  private

  TWO_OR_MORE_DIGITS = /\A\d{2,}\z/

  def divided_digits
    @divided_digits ||= digits.chars.map(&:to_i)
  end

  def sum_total
    @total ||= divided_digits.each_slice(2).sum { |first_digit, last_digit| first_digit + double(last_digit) }
  end

  def double(last_digit)
    return 0 if last_digit.nil?

    (num = last_digit * 2) > 9 ? num - 9 : num
  end

  def is_more_than_double?
    digits.length > 1
  end
end
