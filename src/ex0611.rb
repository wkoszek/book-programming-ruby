# Sample code from Programing Ruby, page 351
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
    f = File.open("tmpfile", "w") do |f|
      c.append_name_to_file(f)
    end
    f = File.open("tmpfile") do |f|
      assert_equal("Ima Customer", f.gets)
    end
  ensure
    File.delete("tmpfile") if File.exist?("tmpfile")
  end
end
