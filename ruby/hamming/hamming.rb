class Hamming
  def self.compute(orig, copy)
    raise ArgumentError if orig.size != copy.size
    diff_sum = 0
    orig.size.times{|idx| diff_sum += 1 if orig[idx] != copy[idx]}
    diff_sum
  end
end
