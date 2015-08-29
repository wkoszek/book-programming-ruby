# Sample code from Programing Ruby, page 559
    def gen_times(factor)
      return Proc.new {|n| n*factor }
    end

    times3 = gen_times(3)
    times5 = gen_times(5)

    times3.call(12)
    times5.call(5)
    times3.call(times5.call(4))
