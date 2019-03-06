class Triangle
  attr_reader :sides

  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    sides.uniq.size == 1 && valid?
  end

  def isosceles?
    sides.uniq.size <= 2 && valid?
  end

  def scalene?
    sides.uniq.size == 3 && valid?
  end

  private

  def valid?
    indices = [0, 1, 2]
    3.times.all? do
      indices.rotate!
      (sides[indices[0]] + sides[indices[1]]) > sides[indices[2]]
    end
  end
end
