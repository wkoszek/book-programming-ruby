# Sample code from Programing Ruby, page 670
require 'mailread'

#MAILBOX = "/Users/dave/Library/Mail/Mailboxes/Ruby/Talk.mbox/mbox"
MAILBOX="code/rubytalk.mbx"
msg = Mail.new(MAILBOX)
msg.header.keys
msg.body[0]
msg.body[1]
msg.body[2]
