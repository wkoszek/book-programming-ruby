# Sample code from Programing Ruby, page 501
         at_exit { puts "at_exit function" }
         ObjectSpace.define_finalizer("string",  lambda { puts "in finalizer" })
         exit
