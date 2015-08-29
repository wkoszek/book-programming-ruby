# Sample code from Programing Ruby, page 130
  srand 2
  count = 0
  threads = []
  10.times do |i|
    threads[i] = Thread.new do
      sleep(rand(0.1))
      Thread.current["mycount"] = count 
      count += 1
    end
  end
  threads.each {|t| t.join; print t["mycount"], ", " }
  puts "count = #{count}"
