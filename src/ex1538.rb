# Sample code from Programing Ruby, page 708
require 'scanf'

date = "2004-12-15"
year, month, day = date.scanf("%4d-%2d-%2d")
year
month
day
year.class
