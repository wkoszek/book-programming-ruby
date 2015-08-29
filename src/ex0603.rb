# Sample code from Programing Ruby, page 344
def meth3
  yield
end

t = Thread.new do
  meth3 { return }
end

t.join
