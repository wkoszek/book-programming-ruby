# Sample code from Programing Ruby, page 312
    require 'benchmark'
    include Benchmark

    str = "a" + ("b" * 5000)

    bm(8) do |test|
      test.report("Normal:") { str =~ /a.*b.*a/ }
      test.report("Nested:") { str =~ /a(?>.*b).*a/ }
    end
