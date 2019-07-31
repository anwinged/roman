require "./roman"

num = ARGV[0].to_i32
rom = Roman.encode(num)
puts rom.upcase
