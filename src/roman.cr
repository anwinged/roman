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
      encode_generator(x) do |t|
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

  def decode(x : String) : Int32
    result = 0
    point_index = 0
    r, a = POINTS[point_index]
    until x.empty?
      if x.starts_with?(r)
        result += a
        x = x.lchop(r)
      else
        point_index += 1
        r, a = POINTS[point_index]
      end
    end
    result
  end

  def roman?(x : String) : Bool
    x.match(/^(m{0,3})(d?c{0,3}|c[dm])(l?x{0,3}|x[lc])(v?i{0,3}|i[vx])$/i) != nil
  end
end
