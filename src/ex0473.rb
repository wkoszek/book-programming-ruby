# Sample code from Programing Ruby, page 256
  excel = WIN32OLE.new("excel.application")
  excelchart = excel.Charts.Add()
  ...
  excelchart['Rotation'] = 45
  puts excelchart['Rotation']
