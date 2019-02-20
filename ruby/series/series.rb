class Series
  attr_reader :digit_str

  def initialize(digit_str)
    @digit_str = digit_str
  end

  def slices(per_length)
    raise ArgumentError if exceed_params_size?(per_length)
    [*0..digit_str.size].inject([]) do |str, t|
      sliced = digit_str.slice(t, per_length)
      return str unless sliced.size == per_length
      str.push(sliced)
    end
  end

  def exceed_params_size?(per_length)
    per_length > digit_str.size
  end

end
