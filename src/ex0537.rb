# Sample code from Programing Ruby, page 305
   class String
     def inspect
       to_s
     end
    end
  'hello'
  'a backslash \'\\\''
  %q/simple string/
  %q(nesting (really) works)
  %q no_blanks_here ;
