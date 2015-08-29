# Sample code from Programing Ruby, page 717
require 'thwait'

class Counter
  attr_reader :total_count
  def initialize
    @total_count = 0
  end
  def inc
    @total_count += 1
  end
end

count = Counter.new
waiter = ThreadsWait.new([])

# create 10 threads that each inc() 10,000 times
10.times do
  waiter.join_nowait(Thread.new { 10000.times { count.inc } })
end

waiter.all_waits  #!sh!
count.total_count
