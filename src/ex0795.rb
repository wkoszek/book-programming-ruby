# Sample code from Programing Ruby, page 433
         (1..10).detect  {|i| i % 5 == 0 and i % 7 == 0 }
         (1..100).detect {|i| i % 5 == 0 and i % 7 == 0 }
         sorry = lambda { "not found" }
         (1..10).detect(sorry) {|i| i > 50}
