# Sample code from Programing Ruby, page 394
def dump_call_stack
  file_contents = {}
  puts "File                      Line  Source Line"
  puts "-------------------------+----+------------"
  caller.each do |position|
    next unless position =~ /\A(.*?):(\d+)/
    file = $1
    line = Integer($2)
    file_contents[file] ||= File.readlines(file)
    printf("%-25s:%3d - %s", file, line, 
           file_contents[file][line-1].lstrip)
  end
end
