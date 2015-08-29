# Sample code from Programing Ruby, page 501
      $stdout.sync = true
      fork do
        3.times {|i| puts "Child: #{i}\n"; sleep 0.05 }
#        3.times {|i| puts "Child: #{i}" }
      end
      3.times {|i| puts "Parent: #{i}\n"; sleep 0.05 }
#      3.times {|i| puts "Parent: #{i}" }
      Process.wait
