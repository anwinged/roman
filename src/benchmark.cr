require "benchmark"
require "./roman"

Benchmark.ips do |x|
  x.report("to roman with concatenation") do
    Roman.encode(3999)
  end

  x.report("to roman with string builder") do
    Roman.encode_sb(3999)
  end
end
