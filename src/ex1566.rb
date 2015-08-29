# Sample code from Programing Ruby, page 722
require 'thread'
queue = Queue.new

consumers = (1..3).map do |i|
  Thread.new("consumer #{i}") do |name|
    begin
      obj = queue.deq
      print "#{name}: consumed #{obj.inspect}\n"
      sleep(rand(0.05))
    end until obj == :END_OF_WORK
  end
end

producers = (1..2).map do |i|
  Thread.new("producer #{i}") do |name|
    3.times do |j|
      sleep(0.1)
      queue.enq("Item #{j} from #{name}")
    end
  end
end

producers.each {|th| th.join}
consumers.size.times { queue.enq(:END_OF_WORK) }
consumers.each {|th| th.join}


