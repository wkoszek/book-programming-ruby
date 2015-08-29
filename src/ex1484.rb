# Sample code from Programing Ruby, page 673
require 'matrix'
require 'mathn'

m1 = Matrix[ [2, 1], [-1, 1] ]

m1[0,1]
 
m1.inv

m1 * m1.inv

m1.determinant

m1.singular?

m2 = Matrix[ [1,2,3], [4,5,6], [7,8,9] ]

m2.minor(1, 2, 1, 2)

m2.rank

v1 = Vector[3, 4]

v1.covector

m1 * v1
