# Sample code from Programing Ruby, page 723
require 'thwait'

group = ThreadsWait.new

# construct 10 threads that wait for 1 second, .9 second, etc.
# add each to the group

9.times do |i|
  thread = Thread.new(i) {|index| sleep 1.0 - index/10.0; index }
  group.join_nowait(thread)
end

# any threads finished?
group.finished?

# wait for one to finish
group.next_wait.value

# wait for 5 more to finish
5.times { group.next_wait }

# wait for next one to finish
group.next_wait.value

# and then wait for all the rest
group.all_waits
