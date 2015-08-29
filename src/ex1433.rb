# Sample code from Programing Ruby, page 648
ENV['DYLD_LIBRARY_PATH'] = ":code/dl"  # Mac OS X
require 'dl/import'

module Message
  extend DL::Importable
  dlload "lib.so"
  extern "int print_msg(char *, int)"
end

msg_size = Message.print_msg("Answer", 42)
puts "Just wrote #{msg_size} bytes"
