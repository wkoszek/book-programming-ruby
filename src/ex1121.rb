# Sample code from Programing Ruby, page 530
        class Thing
        end
        a = %q{def hello() "Hello there!" end}
        Thing.module_eval(a)
        puts Thing.new.hello()
#        Thing.module_eval("invalid code", "dummy", 123)
      begin
        Thing.module_eval("invalid code", "dummy", 123)
      rescue Exception => e
        puts %{#{e.backtrace[0]}: #{e.to_s.sub(/or method/, "\n    or method")}}
      end
