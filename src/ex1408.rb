# Sample code from Programing Ruby, page 637
require 'bigdecimal'
require 'bigdecimal/math'
include BigMath

pi = BigMath::PI(20)    # 20 is the number of decimal digits

radius = BigDecimal("2.14156987652974674392")

area = pi * radius**2
area = area.to_s
def area.to_s
  self.split(/(.{40})/).join(" ").strip
end

area.to_s

# The same with regular floats

radius = 2.14156987652974674392

Math::PI * radius**2

