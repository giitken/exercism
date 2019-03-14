class Hamming
  def self.compute(orig, copy)
    raise ArgumentError if orig.size != copy.size
    orig.size.times.count{|idx| orig[idx] != copy[idx]}
  end
end
