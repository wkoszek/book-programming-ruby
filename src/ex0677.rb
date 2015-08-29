# Sample code from Programing Ruby, page 390
  require 'benchmark'
  include Benchmark

  test = "Stormy Weather"
  m = test.method(:length)
  n = 100000

  bm(12) {|x|
    x.report("call") { n.times { m.call } }
    x.report("send") { n.times { test.send(:length) } }
    x.report("eval") { n.times { eval "test.length" } }
  }
