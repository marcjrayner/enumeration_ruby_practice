class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def planet_names()
    return @planets.map { |planet| planet.name}
  end

  def get_planet_by_name(search_planet)
    return @planets.find { |planet| planet.name == search_planet  }
  end

  def get_largest_planet
    return @planets.max_by { |planet| planet.diameter }
  end
end
