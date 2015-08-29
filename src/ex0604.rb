# Sample code from Programing Ruby, page 344
  def meth4
    p = Proc.new { return 99 }
    p.call
    puts "Never get here"
  end

  meth4
