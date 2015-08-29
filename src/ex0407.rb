# Sample code from Programing Ruby, page 201
# == Synopsis
#
# Display the current date and time, optionally honoring
# a format string.
#
# == Usage
#
#    ruby showtime.rb  [ -h | --help ] [ -f | --fmt fmtstring ]
#
# fmtstring::
#    A +strftime+ format string controlling the
#    display of the date and time. If omitted, 
#    use <em>"%Y-%M-%d %H:%m"</em>
#
# == Author
# Dave Thomas, The Pragmatic Programmers, LLC
#
# == Copyright
# Copyright (c) 2004 The Pragmatic Programmers.
# Licensed under the same terms as Ruby.

require 'optparse'
require 'rdoc/usage'

fmt = "%Y-%M-%d %H:%m"
opts = OptionParser.new
opts.on("-h", "--help") { RDoc::usage }
opts.on("-f", "--fmt FMTSTRING") {|str| fmt = str }
opts.parse(ARGV) rescue RDoc::usage('usage')

puts Time.now.strftime(fmt)
