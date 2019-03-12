class Phrase
  attr_reader :sentence, :tallied_nums

  def initialize(sentence)
    @sentence = sentence
    @tallied_nums = tally_nums
  end

  def word_count
    tallied_nums
  end

  private

  def each_word
    sentence.scan(/\w+'t|\w+/).map(&:downcase)
  end

  def tally_nums
    each_word.uniq.each_with_object({}) {|word, hash| hash[word] = each_word.count(word)}
  end

end
