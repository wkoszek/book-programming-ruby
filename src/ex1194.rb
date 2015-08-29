# Sample code from Programing Ruby, page 559
        Proc.new {}.arity
        Proc.new {||}.arity
        Proc.new {|a|}.arity
        Proc.new {|a,b|}.arity
        Proc.new {|a,b,c|}.arity
        Proc.new {|*a|}.arity
        Proc.new {|a,*b|}.arity
