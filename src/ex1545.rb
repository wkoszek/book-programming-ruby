# Sample code from Programing Ruby, page 711
require 'shellwords'
include Shellwords

line = %{Code Ruby, Be Happy!}
shellwords(line)

line = %{"Code Ruby", 'Be Happy'!}
shellwords(line)

line = %q{Code\ Ruby, \"Be Happy\"!}
shellwords(line)

