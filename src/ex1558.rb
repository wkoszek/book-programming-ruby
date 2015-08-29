# Sample code from Programing Ruby, page 718
require 'thwait'
require 'sync'

class Counter
  attr_reader :total_count
  def initialize
    @total_count = 0
    @count_down = 0
    @sync = Sync.new
  end
  def inc
    @sync.synchronize(:EX) do
      @total_count += 1
      @count_down -= 1
    end
  end
  def test_consistent
    @sync.synchronize(:SH) do
      fail "Bad counts" unless @total_count + @count_down == 0
    end
  end
end

count = Counter.new
waiter = ThreadsWait.new([])

# create 10 threads that each inc() 10,000 times
10.times do
  waiter.join_nowait(Thread.new { 10000.times do
    count.inc
    count.test_consistent 
  end })
end

waiter.all_waits
count.total_count
