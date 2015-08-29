# Sample code from Programing Ruby, page 701
require 'readbytes'

File.open("testfile") do |f|
  begin
    loop do
      data = f.readbytes(10)
      p data
    end
  rescue EOFError
    puts "End of File"
  rescue TruncatedDataError => td
    puts "Truncated data: read '#{td.data.inspect}'"
  end
end
