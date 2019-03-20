class Scrabble

  SCORE = %w{AEILNORSTU DG BCMP FHVWY K JX QZ}
              .zip([1, 2, 3, 4, 5, 8, 10])
              .flat_map {|letters, score| letters.chars.product([score])}
              .to_h

  def initialize(chars)
    letters = chars.to_s.upcase.scan(/\w/)
    @sum = letters.map {|letter| SCORE[letter]}.sum
  end

  def score
    @sum
  end

  def self.score(chars)
    self.new(chars).score
  end

end
