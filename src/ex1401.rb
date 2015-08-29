# Sample code from Programing Ruby, page 634
require 'abbrev'
  
Abbrev::abbrev(['ruby', 'rules'])

%w{ car cone }.abbrev

%w{ car cone }.abbrev("ca")
