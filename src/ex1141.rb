# Sample code from Programing Ruby, page 538
       class Dummy
         @@var = 99
         puts @@var
         remove_class_variable(:@@var)
         puts(defined? @@var)
       end
