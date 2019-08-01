require "./roman"

def roman?(x)
end

value = ARGV[0].downcase

if Roman.roman?(value)
  puts Roman.decode(value)
  exit(0)
end

num = value.to_i { exit(1) }
puts Roman.encode(num).upcase
