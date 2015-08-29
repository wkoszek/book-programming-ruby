# Sample code from Programing Ruby, page 393
  def cat_a
#    puts caller.join("\n")
    puts caller.join("\n").gsub(/-:(\d+)/) { "prog.rb:#{$1.to_i-1}" }
  end
  def cat_b
    cat_a
  end
  def cat_c
    cat_b
  end
  cat_c
