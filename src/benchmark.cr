require "benchmark"
require "./roman"

Benchmark.ips do |x|
  x.report("to roman") do
    Roman.encode(3999)
  end

  x.report("to arab") do
    Roman.decode("mmmcmxcix")
  end
end
