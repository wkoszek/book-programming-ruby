# Sample code from Programing Ruby, page 668
$KCODE = "NONE"
require 'jcode'

str = "\342\210\202x/\342\210\202y"
str.length
str.jlength
str.jcount("\210")
str.chop!
str.chop!
