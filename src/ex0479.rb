# Sample code from Programing Ruby, page 257
require 'win32ole'

excel = WIN32OLE.new("excel.application")

excel.Workbooks.Add
excel.Range("a1").Value = 10
excel.Range("a2").Value = 20
excel.Range("a3").Value = "=a1+a2"

excel.Range("a1:a3").each do |cell|
  p cell.Value
end
