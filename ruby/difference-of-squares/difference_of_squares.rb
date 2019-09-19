class Squares
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def square_of_sum
    (1..num).sum.pow(2)
  end

  def sum_of_squares
    (1..num).map{ |i| i.pow(2) }.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
