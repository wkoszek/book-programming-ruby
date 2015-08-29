# Sample code from Programing Ruby, page 131
$stderr.sync = $stdout.sync = true
  Thread.abort_on_exception = true
  threads = []
  4.times do |number|
    threads << Thread.new(number) do |i|
      raise "Boom!" if i == 2
      print "#{i}\n"
    end
  end
  threads.each {|t| t.join }
