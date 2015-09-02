#!/usr/bin/env ruby


class Report
	def initialize
		@debug = 0
		@file_name_in = false
	end
	def file_name_in
		@file_name_in
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

	def ex_count_ok_and_errored
		files_run = Hash.new
		files_bad = Hash.new
		total_run = 0

		f = File.new(@file_name_in)
		f.read().split("\n").each do |line|
			if line =~ /^gtimeout/  or line =~ /^timeout/ then
				chunks = line.split(" ")
				chunks.each do |chunk|
					if not chunk =~ /^src/ then
						next
					else
						self.dbg "good #{chunk}\n"
						files_run[chunk] = 1
						total_run += 1
					end
				end
			end

			#make: [out/ex0187.o] Error 1 (ignored)
			if line =~ /^make: \[out\/(.*)\.o\] Error/ then
				o_base_name = $1
				files_bad["src/#{o_base_name}.rb"] = 0
			end
		end
		f.close()

		ok_cnt = total_run - files_bad.length
		bad_cnt = files_bad.length

		return [ok_cnt, bad_cnt]
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
	cnt_run, cnt_bad = r.ex_count_ok_and_errored()
	cnt_excluded = r.ex_count_excluded()

	cnt_run_percent = (cnt_run.to_f / cnt_total.to_f) * 100
	cnt_excluded_percent = (cnt_excluded.to_f / cnt_total.to_f) * 100
	cnt_bad_percent = (cnt_bad.to_f / cnt_total.to_f) * 100

	print "-------------  #{r.file_name_in} ---------------\n"
	print "T. Examples total   :   %4d (%7.2f%%)\n" % [cnt_total, 100]
	print "1. Examples run     :   %4d (%7.2f%%)\n" % [cnt_run, cnt_run_percent]
	print "2. Examples excluded: + %4d (%7.2f%%)\n" % [cnt_excluded, cnt_excluded_percent]
	print "3. Examples bad     : + %4d (%7.2f%%)\n" % [cnt_bad, cnt_bad_percent]
	print "                      = %4d (should match total [T])\n" % (cnt_run + cnt_excluded + cnt_bad)
end

main()
