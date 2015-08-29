# Sample code from Programing Ruby, page 136
require 'monitor'

class Counter
  include MonitorMixin
#  . . .
  attr_reader :count
  def initialize
    @count = 0
    super
  end
  def tick
    synchronize do
      @count += 1
    end
  end
end
