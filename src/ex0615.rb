# Sample code from Programing Ruby, page 354
def csv_from_row(op, row)
  # as before
end

result = []
query.each_row {|row|  csv_from_row(result, row)}

http.write result.join
