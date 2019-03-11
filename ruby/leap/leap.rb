class Year
  def self.leap?(year)
    return false if (year % 4).positive?
    return true if (year % 400).zero? || (year % 100).positive?
  end
end
