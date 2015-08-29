# Sample code from Programing Ruby, page 395
require 'sub'
require 'stack_dumper'

def main_method(arg1, arg2)
  dump_call_stack
end

sub_method(123, "cat")
