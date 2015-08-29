# Sample code from Programing Ruby, page 584
         Signal.trap(0, lambda { puts "Terminating: #{$$}" })
         Signal.trap("CLD")  { puts "Child died" }
         fork && Process.wait
