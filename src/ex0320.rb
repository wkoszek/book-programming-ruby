# Sample code from Programing Ruby, page 134
class Counter
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

t1 = Thread.new { 10000.times {  c.tick } } 
t2 = Thread.new { 10000.times {  c.tick } }

t1.join      #!sh!
t2.join      #!sh!

c.count
