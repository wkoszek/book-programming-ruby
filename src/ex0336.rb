# Sample code from Programing Ruby, page 143
 $: << "code"
 require 'romanbug'
#require 'roman'

r = Roman.new(1)
fail "'i' expected" unless r.to_s == "i"

r = Roman.new(9)
fail "'ix' expected" unless r.to_s == "ix"
