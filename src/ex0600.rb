# Sample code from Programing Ruby, page 343
def meth
  res = yield 
  "The block returns #{res}"
end

meth { next 99 }

pr = Proc.new { next 99 }
pr.call

pr = lambda { next 99 }
pr.call
