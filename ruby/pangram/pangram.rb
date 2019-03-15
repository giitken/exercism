class Pangram
  LETTERS = 26
  def self.pangram?(sentence)
    sentence.scan(/[a-zA-Z]/).uniq.size == LETTERS
  end
end
