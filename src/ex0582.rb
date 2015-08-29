# Sample code from Programing Ruby, page 333
def example(&block)
  puts block.inspect
end

example
example { "a block" }
