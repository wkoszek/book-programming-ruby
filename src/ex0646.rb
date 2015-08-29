# Sample code from Programing Ruby, page 374
class ExampleDate
  def once(*ids) # :nodoc:
    for id in ids
      module_eval <<-"end;"
        alias_method :__#{id.to_i}__, :#{id.to_s}
        private :__#{id.to_i}__
        def #{id.to_s}(*args, &block)
          (@__#{id.to_i}__ ||= [__#{id.to_i}__(*args, &block)])[0]
        end
      end;
    end
  end
end
