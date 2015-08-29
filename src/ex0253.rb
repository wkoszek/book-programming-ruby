# Sample code from Programing Ruby, page 98
result = while line = gets
           break(line) if line =~ /answer/
         end

process_answer(result) if result
