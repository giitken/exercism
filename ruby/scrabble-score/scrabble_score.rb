class Scrabble

  SCORE = {1 => %w(A E I O U L N R S T),
           2 => %w(D G),
           3 => %w(B C M P),
           4 => %w(F H V W Y),
           5 => %w(K),
           8 => %w(J X),
           10 => %w(Q Z)}

  def initialize(chars)
    alfabets = chars.nil? ? [] : chars.upcase.scan(/\w/)
    @sum = alfabets.inject(0) {|sum, char| sum + aggregate(char)}
  end

  def score
    @sum
  end

  def self.score(chars)
    self.new(chars).score
  end

  private

  def aggregate(char)
    SCORE.find {|k, v| v.include?(char)}.first
  end

end
