# Sample code from Programing Ruby, page 208
require 'rubygems'
require_gem 'BlueCloth', ">= 0.0.4"
doc = BlueCloth::new <<MARKUP
 This is some sample [text][1].  Just learning to use [BlueCloth][1].
 Just a simple test.

 [1]: http://ruby-lang.org
MARKUP

puts doc.to_html
