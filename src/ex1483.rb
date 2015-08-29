# Sample code from Programing Ruby, page 672
  require 'mathn'
  primes = Prime.new

  3.times { puts primes.succ }
  primes.each {|p| puts p; break if p > 20 }
