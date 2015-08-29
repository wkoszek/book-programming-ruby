# Sample code from Programing Ruby, page 524
         module M1
           module M2
             $a = Module.nesting
           end
         end
         $a
         $a[0].name
