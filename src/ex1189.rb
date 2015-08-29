# Sample code from Programing Ruby, page 557
    include ObjectSpace

    a, b, c = "A", "B", "C"
    puts "a's id is #{a.object_id}"
    puts "b's id is #{b.object_id}"
    puts "c's id is #{c.object_id}"

    define_finalizer(a, lambda {|id| puts "Finalizer one on #{id}" })
    define_finalizer(b, lambda {|id| puts "Finalizer two on #{id}" })
    define_finalizer(c, lambda {|id| puts "Finalizer three on #{id}" })
