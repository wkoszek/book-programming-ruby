# Sample code from Programing Ruby, page 48
def fib_up_to(max)
  i1, i2 = 1, 1
  while i1 <= max
    yield i1
    i1, i2 = i2, i1+i2
  end
end
a = [1, 2]
b = 'cat'
a.each {|b| c = b * a[1] }
a
b
defined?(c)
