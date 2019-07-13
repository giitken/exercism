class SpaceAge
  attr_reader :seconds

  EARTH_YEAR_IN_SECONDS = (60 * 60 * 24 * 365.25) # sum is 315_57_600

  PLANETS = {
      earth:   1.0,
      mercury: 0.2408467,
      venus:   0.61519726,
      mars:    1.8808158,
      jupiter: 11.862615,
      saturn:  29.447498,
      uranus:  84.016846,
      neptune: 164.79132
  }.map(&:freeze).to_h.freeze

  def initialize(seconds)
    @seconds = seconds
  end

  PLANETS.each do |planet_name, orbital_period|
    define_method "on_#{planet_name}" do
      seconds / (EARTH_YEAR_IN_SECONDS * orbital_period)
    end
  end
end

