# Sample code from Programing Ruby, page 670
require 'mailread'

#MAILBOX = "/Users/dave/Library/Mail/Mailboxes/Ruby/Talk.mbox/mbox"
MAILBOX="code/rubytalk.mbx"
mbox = File.open(MAILBOX)
count = 0 
lines = 0
while !mbox.eof?
  msg = Mail.new(mbox)
  count += 1
  lines += msg.header['Lines'].to_i
end

count
lines
