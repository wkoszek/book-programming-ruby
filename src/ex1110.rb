# Sample code from Programing Ruby, page 527
        class One
          @@var1 = 1
        end
        class Two < One
          @@var2 = 2
        end
        One.class_variables
        Two.class_variables
