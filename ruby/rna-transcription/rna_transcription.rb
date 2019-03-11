class Complement
  def self.of_dna(element)
    element.gsub(/G|C|T|A/, "G" => "C", "C" => "G", "T" => "A", "A" => "U")
  end
end
