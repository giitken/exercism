class Triangle

  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    @sides.uniq.size == 1 && valid?
  end

  def isosceles?
    @sides.uniq.size <= 2 && valid?
  end

  def scalene?
    @sides.uniq.size == 3 && valid?
  end

  private

  def valid?
    a, b, c = @sides.sort
    a > 0 && c <= a + b
  end
end
