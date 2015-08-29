# Sample code from Programing Ruby, page 393
  class Test
    def test
      a = 1
      b = 2
    end
  end
  
  set_trace_func proc {|event, file, line, id, binding, classname|
 file = "prog.rb"
 line -= 2 if line > __LINE__
    printf "%8s %s:%-2d %10s %8s\n", event, file, line, id, classname
  }
  t = Test.new
  t.test
