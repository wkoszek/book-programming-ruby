# Sample code from Programing Ruby, page 137
require 'monitor'

playlist = []
playlist.extend(MonitorMixin)

# Player thread
Thread.new do
  record = nil
  loop do
    playlist.synchronize do      # < <  BUG!!!
      sleep 0.1 while playlist.empty?
      record = playlist.shift
    end
    play(record)
  end
end

# Customer request thread thread
Thread.new do
  loop do
    req = get_customer_request
    playlist.synchronize do
      playlist << req
    end
  end
end
