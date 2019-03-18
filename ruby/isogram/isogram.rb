class Isogram
  def self.isogram?(input)
    chars = input.downcase.scan(/[a-z]/)
    chars.size == chars.uniq.size
  end
end
