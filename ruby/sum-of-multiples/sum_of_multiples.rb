class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  def to(limit)
    return 0 if multiples == [0]

    (0...limit).select { |n| multiples.any? { |m| (n % m).zero? } }.sum
  end

  private

  attr_reader :multiples
end
