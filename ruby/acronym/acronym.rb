class Acronym
  def self.abbreviate(text)
    text.scan(/^\w|(?<=[ -])\w/).join.upcase
  end
end
