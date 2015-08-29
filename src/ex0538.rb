# Sample code from Programing Ruby, page 305
   class String
     def inspect
       to_s
     end
    end
a  = 123 #!sh!
"\123mile"
"Say \"Hello\""
%Q!"I said 'nuts'," I said!
%Q{Try #{a + 1}, not #{a - 1}}
%<Try #{a + 1}, not #{a - 1}>
"Try #{a + 1}, not #{a - 1}"
%{ #{ a = 1; b = 2; a + b } }
