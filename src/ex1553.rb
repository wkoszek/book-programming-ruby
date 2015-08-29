# Sample code from Programing Ruby, page 715
require 'stringio'
require 'csv'
require 'test/unit'

class TestCSV < Test::Unit::TestCase

  def test_simple
    StringIO.open do |op|
      CSV::Writer.generate(op) do |csv|
        csv << [ 1, "line 1", 27 ]
        csv << [ 2, nil, 123 ]
      end
      assert_equal("1,line 1,27\n2,,123\n", op.string)
    end
  end
end
