# Sample code from Programing Ruby, page 666
require 'io/wait'

reader, writer = IO.pipe

if (pid = fork)
  writer.close
  8.times do 
    sleep 0.03
    len = reader.ready?
    puts "Ready? = #{len.inspect}"
    puts(reader.sysread(len)) if len
  end
  Process.waitpid(pid)
else
  reader.close
  5.times do |n|
    sleep 0.04
    writer.write n.to_s * 10
  end
  writer.close
end
