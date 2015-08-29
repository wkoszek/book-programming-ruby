# Sample code from Programing Ruby, page 92
def parse(l) end
  File.foreach("/etc/fstab") do |line|
    next if line =~ /^#/              # Skip comments
    parse(line) unless line =~ /^$/   # Don't parse empty lines
  end
