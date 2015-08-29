# Sample code from Programing Ruby, page 648
require 'dl'

Message = DL.dlopen("code/dl/lib.so")
print_msg = Message[ "print_msg", "ISI" ]
msg_size, args = print_msg.call("Answer", 42)
puts "Just wrote #{msg_size} bytes"
