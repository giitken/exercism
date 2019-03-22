class Triangle

  def initialize(sides)
    @sides = sides
    @unique_sides = @sides.uniq.size
  end

  def equilateral?
    @unique_sides == 1 && valid?
  end

  def isosceles?
    @unique_sides <= 2 && valid?
  end

  def scalene?
    @unique_sides == 3 && valid?
  end

  private

  def valid?
    a, b, c = @sides.sort
    a > 0 && c <= a + b
  end

end
