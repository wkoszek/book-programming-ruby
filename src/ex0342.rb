# Sample code from Programing Ruby, page 147
#require 'roman'
 $: << "code"
 require 'code/roman3'
require 'test/unit'
class TestRoman < Test::Unit::TestCase

  def test_range
    assert_raise(RuntimeError) { Roman.new(0) }
    assert_nothing_raised()    { Roman.new(1) }
    assert_nothing_raised()    { Roman.new(499) }
    assert_raise(RuntimeError) { Roman.new(5000) }
  end
end
