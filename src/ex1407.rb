# Sample code from Programing Ruby, page 636
          require 'benchmark'
          include Benchmark
          bmbm(6) do |x|
            x.report("all") do
               str = File.read("/usr/share/dict/words")
               words = str.scan(/[-\w']+/)
            end
            x.report("lines") do
              words = []
              File.foreach("/usr/share/dict/words") do |line|
                words << line.chomp
              end
            end
          end
