class Phrase

  def initialize(sentence)
    @sentence = sentence.scan(/\w+'t|\w+/).map(&:downcase)
  end

  def word_count
    @sentence.uniq.each_with_object({}) do |word, hash|
      hash[word] = @sentence.count(word)
    end
  end
end
