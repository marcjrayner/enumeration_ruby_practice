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

  def get_smallest_planet
    return @planets.min_by { |planet| planet.diameter }
  end

  def get_planets_with_no_moons()
    return @planets.find_all { |planet| planet.number_of_moons == 0}
  end

  def get_planets_with_more_moons(moons)
    found_planets = @planets.find_all { |planet| planet.number_of_moons > moons}
    return found_planets.map { |planet| planet.name }
  end

  def get_number_of_planets_closer_than(distance)
    planets_found = @planets.find_all { |planet| planet.distance_from_sun < distance }
    return planets_found.count()
  end

  def get_total_number_of_moons()
    number_of_moons = @planets.map { |planet| planet.number_of_moons }
    return number_of_moons.reduce { |total, moons| total + moons }
  end

  def get_planet_names_sorted_by_increasing_distance_from_sun()
    return @planets
        .sort_by { |planet| planet.distance_from_sun }
        .map { |planet| planet.name }
  end

  def get_planet_names_sorted_by_size_decreasing()
    return @planets
        .sort_by { |planet| planet.diameter }
        .map { |planet| planet.name }
        .each { |planet| p planet }
        .reverse()
  end
end
