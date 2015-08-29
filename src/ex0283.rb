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
vf = VowelFinder.new("the quick brown fox jumped")

vf.inject {|v,n| v+n }
