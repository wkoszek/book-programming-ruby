# Sample code from Programing Ruby, page 528
         module Mixin
         end

         module Outer
           include Mixin
         end

         Mixin.included_modules
         Outer.included_modules
