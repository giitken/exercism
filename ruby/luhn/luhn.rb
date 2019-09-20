class Luhn
  attr_reader :digits

  def initialize(digits)
    @digits = digits
  end

  def valid?
    return false unless normalized_digits.match?(TWO_OR_MORE_DIGITS)

    (sum_total % 10).zero? && is_more_than_double?
  end

  def self.valid?(digits)
    new(digits).valid?
  end

  private

  TWO_OR_MORE_DIGITS = /\A\d{2,}\z/

  def normalized_digits
    @normalized_digits ||= digits.reverse.gsub(/\s/, '')
  end

  def sum_total
    @total ||= normalized_digits.chars.map(&:to_i).each_with_index.inject(0) do |total, (digit, idx)|
      total += idx.even? ? digit : doubled_num(digit)
    end
  end

  def doubled_num(digit)
    (num = digit.to_i * 2) > 9 ? num - 9 : num
  end

  def is_more_than_double?
    digits.length > 1
  end
end
