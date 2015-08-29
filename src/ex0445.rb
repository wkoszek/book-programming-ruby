# Sample code from Programing Ruby, page 235
#!/usr/bin/ruby
require 'webrick'
include WEBrick

s = HTTPServer.new(
  :Port         => 2000,
  :DocumentRoot => File.join(Dir.pwd, "/html")
)

trap("INT") { s.shutdown }

s.start
