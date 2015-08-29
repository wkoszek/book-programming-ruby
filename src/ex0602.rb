# Sample code from Programing Ruby, page 344
def meth2(&b)
  b
end

res = meth2 { return }
res.call
