# TODO: Write documentation for `Roman`
module Roman
  extend self

  VERSION = "0.1.0"

  POINTS = [
    {"v", 5},
    {"i", 1},
  ]

  def encode(x) : String
    result = ""
    point_index = 0
    r, a = POINTS[point_index]
    while x > 0
      if x >= a
        result += r
        x -= a
      else
        point_index += 1
        r, a = POINTS[point_index]
      end
    end
    result.upcase
  end
end
