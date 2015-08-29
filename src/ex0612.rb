# Sample code from Programing Ruby, page 352
 $: << "code"
require 'test/unit'
require 'test/unit/ui/console/testrunner'
require 'test/unit/ui/testrunnerutilities'

module Test
  module Unit
    module UI
      class Console::TestRunner
        def started(result)
          @result = result
          # output("Started")
        end
        def finished(elapsed_time)
          #nl
          output("Finished in #{elapsed_time} seconds.")
          @faults.each_with_index do |fault, index|
            nl
            output("%3d) %s" % [index + 1, fault.long_display])
          end
          output(@result)
        end
        
        def setup_mediator
          @mediator = create_mediator(@suite)
          suite_name = @suite.to_s
          if ( @suite.kind_of?(Module) )
            suite_name = @suite.name
          end
          #output("Loaded suite #{suite_name}")
        end
        
        def test_finished(name)
          #    output_single(".", PROGRESS_ONLY) unless (@already_outputted)
          #nl(VERBOSE)
          @already_outputted = false
        end
      end
    end
  end

end          
require 'test/unit'
require 'addcust'

class TestAddCustomer < Test::Unit::TestCase

  def test_add
    c = Customer.new("Ima", "Customer")
    f = ""
    c.append_name_to_file(f)
    assert_equal("Ima Customer", f)
  end
end
