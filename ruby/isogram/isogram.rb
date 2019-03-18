class Isogram
  def self.isogram?(input)
    input.scan(/\w/).size == input.downcase.scan(/\w/).uniq.size
  end
end
