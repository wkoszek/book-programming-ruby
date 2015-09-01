#!/usr/bin/env ruby


class Report
	def initialize
		@debug = 0
	end

	def dbg(*args)
		if @debug != 0 then
			print "DBG: ", *args
		end
	end

	def read_args
		ARGV.each do |arg|
			if arg =~ /-d/ then
				@debug = 1
			end
		end
	end

	def ex_count_total
		total_examples = 0
		Dir.foreach("src") do |fname|
			if fname =~ /^ex/ then
				self.dbg "in dir: #{fname}\n"
				total_examples += 1
			end
		end
		return total_examples
	end

	def ex_count_run
		total_run = 0
		f = File.new("./typescript")
		f.read().split("\n").each do |line|
			if line =~ /^gtimeout/  or line =~ /^timeout/ then
				self.dbg "#{line}\n"
				total_run += 1
			end
			#make: [out/ex0187.o] Error 1 (ignored)
		end
		f.close()
		return total_run
	end

	def ex_count_excluded
		cnt_excluded = 0
		Dir.foreach(".") do |file_name|
			if not file_name =~ /makefile.ex*/ then
				next
			end
			f = File.new(file_name)
			f.read().split("\n").each do |line|
				if line =~ /EXCLUDED/ then
					cnt_excluded += 1
				end
			end
			f.close()
		end
		return cnt_excluded
	end
end

def main
	r = Report.new()
	r.read_args()

	cnt_total = r.ex_count_total()
	cnt_run = r.ex_count_run()
	cnt_excluded = r.ex_count_excluded()
	
	cnt_run_percent = (cnt_run.to_f / cnt_total.to_f) * 100
	cnt_excluded_percent = (cnt_excluded.to_f / cnt_total.to_f) * 100

	print "--------------------------------\n"
	print "Examples total   : %4d (%3.02f%%)\n" % [cnt_total, 100]
	print "Examples run     : %4d (% 3.02f%%)\n" % [cnt_run, cnt_run_percent]
	print "Examples excluded: %4d (% 3.02f%%)\n" % [cnt_excluded, cnt_excluded_percent]
	print "Example run(%d) + excluded(%d) = %d (expected:%d)\n" %
			[cnt_run, cnt_excluded, cnt_run + cnt_excluded, cnt_total]
end

main()
