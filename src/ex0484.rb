# Sample code from Programing Ruby, page 259
#require 'netmeeting'
#require 'benchmark'
#include Benchmark
#
#bmbm(10) do |test|
#
#  test.report("Dynamic") do
#    nm = WIN32OLE.new('NetMeeting.App.1')
#    10000.times { nm.Version }
#  end
#
#  test.report("Via proxy") do
#    nm = NetMeeting_App_1.new
#    10000.times { nm.Version }
#  end
#end
puts File.readlines("code/timeole.times")
