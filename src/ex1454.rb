# Sample code from Programing Ruby, page 660
 File.delete("/tmp/testfile") rescue 1;
  require 'ftools'

  def install_if_different(source, dest)    
    if File.exist?(dest) && File.compare(source, dest)
      puts "#{dest} is up to date"
    else
      File.copy(source, dest)
      puts "#{source} copied to #{dest}"
    end
  end

  install_if_different('testfile', '/tmp/testfile')
  puts "Second time..."
  install_if_different('testfile', '/tmp/testfile')
  puts "Done"
