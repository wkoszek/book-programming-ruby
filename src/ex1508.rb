# Sample code from Programing Ruby, page 687
require 'open3'

Open3.popen3('bc') do | stdin, stdout, stderr |

  Thread.new { loop { puts "Err stream:    #{stderr.gets}" } }
  Thread.new { loop { puts "Output stream: #{stdout.gets}" } }
  
  stdin.puts "3 * 4"
  stdin.puts "1 / 0"
  stdin.puts "2 ^ 5"
  sleep 0.1
end
