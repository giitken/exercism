class Raindrops
  FACTORS_TABLE = {
      3 => 'Pling',
      5 => 'Plang',
      7 => 'Plong',
  }

  def self.convert(num)
    sounds = FACTORS_TABLE.map {|k, v| v if (num % k).zero?}.join
    sounds.empty? ? num.to_s : sounds
  end
end
