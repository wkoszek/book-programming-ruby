# Sample code from Programing Ruby, page 20
  # within class Array...
  def each
    for each element    # <-- not valid Ruby
      yield(element)
    end
  end
