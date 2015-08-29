# Sample code from Programing Ruby, page 75
  def take_block(p1)
    if block_given?
      yield(p1)
    else
      p1
    end
  end
  take_block("no block")
  take_block("no block") {|s| s.sub(/no /, '') }
