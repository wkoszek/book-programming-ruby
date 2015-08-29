# Sample code from Programing Ruby, page 667
require 'ipaddr'
  v4 = IPAddr.new('192.168.23.0/24')
  other = IPAddr.new("192.168.23.56")
  v4.include?(other)
