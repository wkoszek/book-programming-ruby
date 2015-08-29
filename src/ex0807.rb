# Sample code from Programing Ruby, page 436
        require 'benchmark'
        include Benchmark

        a = (1..100000).map {rand(100000)}

        bm(10) do |b|
          b.report("Sort")    { a.sort }
          b.report("Sort by") { a.sort_by {|a| a} }
        end
