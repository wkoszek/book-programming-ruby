# Sample code from Programing Ruby, page 114
class VowelFinder
  include Enumerable

  def initialize(string)
    @string = string
  end

  def each
    @string.scan(/[aeiou]/) do |vowel|
      yield vowel
    end
  end
end
module Summable
  def sum
    inject {|v,n| v+n }
  end
end

class Array
  include Summable
end

class Range
  include Summable
end

class VowelFinder
  include Summable
end
[ 1, 2, 3, 4, 5 ].sum
( 'a'..'m').sum

vf = VowelFinder.new("the quick brown fox jumped")
vf.sum
