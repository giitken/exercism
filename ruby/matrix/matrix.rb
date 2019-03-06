class Matrix
  def initialize(raw_matrix)
    @raw_matrix = raw_matrix
  end

  def rows
    @raw_matrix.lines.map{|row| row.split.map(&:to_i)}
  end

  def columns
    rows.transpose
  end
end
