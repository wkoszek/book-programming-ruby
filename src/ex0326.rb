# Sample code from Programing Ruby, page 136
require 'monitor'

class Counter
  # as before...
  attr_reader :count
  def initialize
    @count = 0
    super
  end
  def tick
    @count += 1
  end
end

c = Counter.new
c.extend(MonitorMixin) #!sh!

t1 = Thread.new { 10000.times {  c.synchronize { c.tick } } }
t2 = Thread.new { 10000.times {  c.synchronize { c.tick } } }

t1.join; t2.join  #!sh!
c.count
