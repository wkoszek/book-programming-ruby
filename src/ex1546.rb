# Sample code from Programing Ruby, page 712
     require 'singleton'

     class MyClass
       
       attr_accessor :data
       include Singleton
     end

     a = MyClass.instance
     b = MyClass.instance

     a.data = 123
     b.data
