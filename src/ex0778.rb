# Sample code from Programing Ruby, page 427
      callcc {|cont|  cont.call }
      callcc {|cont|  cont.call 1 }
      callcc {|cont|  cont.call 1, 2, 3 }
