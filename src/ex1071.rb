# Sample code from Programing Ruby, page 511
         trace_var :$_, lambda {|v| puts "$_ is now '#{v}'" }
         $_ = "hello"
         sub(/ello/, "i")
         $_ += " Dave"
