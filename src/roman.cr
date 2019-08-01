module Roman
  extend self

  VERSION = "0.1.0"

  POINTS = [
    {"m", 1000},
    {"cm", 900},
    {"d", 500},
    {"cd", 400},
    {"c", 100},
    {"xc", 90},
    {"l", 50},
    {"xl", 40},
    {"x", 10},
    {"ix", 9},
    {"v", 5},
    {"iv", 4},
    {"i", 1},
  ]

  def encode(x) : String
    result = String.build do |s|
      encode_gener(x) do |t|
        s << t
      end
    end
    result
  end

  private def encode_generator(x, &block)
    point_index = 0
    r, a = POINTS[point_index]
    while x > 0
      if x >= a
        yield r
        x -= a
      else
        point_index += 1
        r, a = POINTS[point_index]
      end
    end
  end
end
