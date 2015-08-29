# Sample code from Programing Ruby, page 616
        me = Thread.current
        me[:oliver] = "a"
        me.key?(:oliver)
        me.key?(:stanley)
