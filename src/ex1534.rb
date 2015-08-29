# Sample code from Programing Ruby, page 706
require 'drb/drb'
require 'rinda/rinda'
require 'my_uri'

DRb.start_service
ts = Rinda::TupleSpaceProxy.new(DRbObject.new(nil, MY_URI))
loop do
  op, v1, v2 = ts.take([ %r{^[-+/*]$}, Numeric, Numeric])
  ts.write(["result", v1.send(op, v2)])
end
