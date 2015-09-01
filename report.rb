#!/usr/bin/env ruby


class Report
	def initialize
		@debug = 0
		@filename_out = false
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
			else
				@file_name_in = arg
			end
		end
	end
	def check_args
		if not @file_name_in
			print "usage!"
			exit
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
		f = File.new(@file_name_in)
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
		excluded = Hash.new
		Dir.foreach(".") do |file_name|
			if not file_name =~ /makefile.ex*/ then
				next
			end
			f = File.new(file_name)
			f.read().split("\n").each do |line|
				chunks = line.split(" ")
				stmt_with_excluded = chunks[0]
				excluded[stmt_with_excluded] = stmt_with_excluded
			end
			f.close()
		end
		return excluded.length
	end
end

def main
	r = Report.new()
	r.read_args()
	r.check_args()


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
