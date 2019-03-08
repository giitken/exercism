class Series
  attr_reader :digit_str

  def initialize(digit_str)
    @digit_str = digit_str
  end

  def slices(per_length)
    raise ArgumentError if exceed_params_size?(per_length)
    digit_str.chars.each_cons(per_length).to_a.map(&:join)
  end

  def exceed_params_size?(per_length)
    per_length > digit_str.size
  end

end
