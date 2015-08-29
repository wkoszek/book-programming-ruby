# Copyright 2015 Wojciech A. Koszek <wojciech@koszek.com>
ALL_RBS_RAW=$(wildcard src/*.rb)
ALL_RBS_EXCLUDED=
include mk.excludes.mk # will fill ALL_RBS_EXCLUDED. Lots of stuff there.
ALL_RBS=$(filter-out $(ALL_RBS_EXCLUDED), $(ALL_RBS_RAW))

ALL_OUT_RAW=$(ALL_RBS:.rb=.o)
ALL_OUT=$(subst src,out,$(ALL_OUT_RAW))

RUBY_OPTS=-c	# syntax check only for now

#debug:
#	echo $(ALL_OUT)

all: prepare $(ALL_OUT)

prepare:
	mkdir -p out
	rm -rf out/*

out/%.o: src/%.rb
	ruby $(RUBY_OPTS) $< 2>&1 > $@

clean:
	rm -rf out