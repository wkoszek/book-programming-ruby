# Sample code from Programing Ruby, page 706
require 'drb/drb'
require 'rinda/tuplespace'

require 'my_uri'    # Defines the constant MY_URI

DRb.start_service(MY_URI, Rinda::TupleSpace.new)
DRb.thread.join
