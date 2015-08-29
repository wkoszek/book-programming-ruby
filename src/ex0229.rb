# Sample code from Programing Ruby, page 92
input_line = "quit"
case input_line

when "debug"
  dump_debug_info
  dump_symbols
    
when /p\s+(\w+)/
  dump_variable($1)
    
when "quit", "exit"
  exit
    
else
  print "Illegal command: #{input_line}"
end
