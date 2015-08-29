# Sample code from Programing Ruby, page 703
require 'socket'

count = 0
Thread.critical = true
thread = Thread.new { Thread.pass; loop {   count += 1;  } }
IPSocket.getaddress("www.ruby-lang.org")
count
