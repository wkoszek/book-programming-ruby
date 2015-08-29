# Sample code from Programing Ruby, page 707
require 'rss/0.9'

rss = RSS::Rss.new("0.9")
chan = RSS::Rss::Channel.new
chan.description = "Dave's Feed"
chan.link = "http://pragprog.com/pragdave"
rss.channel = chan

image = RSS::Rss::Channel::Image.new
image.url = "http://pragprog.com/pragdave.gif"
image.title = "PragDave"
image.link = chan.link
chan.image = image

3.times do |i|
  item = RSS::Rss::Channel::Item.new
  item.title = "My News Number #{i}"
  item.link = "http://pragprog.com/pragdave/story_#{i}"
  item.description = "This is a story about number #{i}"
  chan.items << item
end

puts rss.to_s
