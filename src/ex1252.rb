# Sample code from Programing Ruby, page 583
class Hash
def method_missing(name, *args)
 puts "Missing #{name}"
 exit!
end
def inspect
  '{' +
  keys.sort.collect {|k|  '"' + k + '"=>' + self[k].to_s}.join(', ') +
   '}'
end
end
        Signal.list
