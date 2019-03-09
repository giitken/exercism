class Phrase

  def initialize(sentence)
    @sentence = sentence
  end

  def word_count
    each_word = @sentence.scan(/\w+'t|\w+/).map(&:downcase)
    each_word.uniq.each_with_object({}) {|word, hash|
      hash.store(word, each_word.count(word))
    }
  end
end
