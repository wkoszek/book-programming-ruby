# Sample code from Programing Ruby, page 136
require 'monitor'

class Counter
  attr_reader :count
  def initialize
    @count = 0
  end
  def tick
    @count += 1
  end
end

c = Counter.new
lock = Monitor.new

t1 = Thread.new { 10000.times { lock.synchronize { c.tick } } }
t2 = Thread.new { 10000.times { lock.synchronize { c.tick } } }
t1.join; t2.join #!sh!

c.count
