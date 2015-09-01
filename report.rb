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
end

def main
	r = Report.new()
	r.read_args()

	cnt_total = r.ex_count_total()
	cnt_run = r.ex_count_run()
	cnt_run_percent = (cnt_run.to_f / cnt_total.to_f) * 100
	print "--------------------------------\n"
	print "Examples total: #{cnt_total} (100.00%)\n"
	print "Examples run  : #{cnt_run} ( %02.02f%%)\n" % cnt_run_percent
end

main()
