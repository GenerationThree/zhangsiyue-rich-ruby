class Map
  @places

  def initialize(places)
    @places = places
  end

  def find_destination(start, step)
    @places.at( (@places.index(start) + step) % @places.length)
  end

end