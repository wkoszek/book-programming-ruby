# Sample code from Programing Ruby, page 148
require 'test/unit'
def ARGF.read
 nil
end
class TestsWhichFail < Test::Unit::TestCase
  def test_reading
    assert_not_nil(ARGF.read, "Read next line of input")
  end
end
