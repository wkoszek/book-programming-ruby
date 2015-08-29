# Sample code from Programing Ruby, page 561
        def create_proc
          Proc.new
        end

        my_proc = create_proc { "hello" }
 my_proc = "#<Proc:0x001c7abc@prog.rb:5>"
        my_proc.to_s
