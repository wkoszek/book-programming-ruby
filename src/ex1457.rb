# Sample code from Programing Ruby, page 661
begin
require 'gdbm'

GDBM.open("data.dbm", 0, GDBM::READER) do |dbm|
  p dbm.keys
  dbm.delete('name')
end
rescue Exception => e
  e.backtrace.pop
  e.backtrace.each {|m| m.sub!(/\d/) {|d| (d.to_i - 1).to_s}}
  raise
end
