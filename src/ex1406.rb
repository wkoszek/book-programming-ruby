# Sample code from Programing Ruby, page 636
          require 'benchmark'
          include Benchmark
          string = "Stormy Weather"
          m = string.method(:length)
          bm(6) do |x|
            x.report("call") { 10_000.times { m.call } }
            x.report("send") { 10_000.times { string.send(:length) } }
            x.report("eval") { 10_000.times { eval "string.length" } }
          end
