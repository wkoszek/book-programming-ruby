# Sample code from Programing Ruby, page 559
        def proc_from
          Proc.new
        end
        proc = proc_from { "hello" }
        proc.call
