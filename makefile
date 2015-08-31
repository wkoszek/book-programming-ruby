# Copyright 2015 Wojciech A. Koszek <wojciech@koszek.com>
ALL_RBS_RAW=$(wildcard src/*.rb)
ALL_RBS_EXCLUDED=
include mk.excludes.mk # will fill ALL_RBS_EXCLUDED. Lots of stuff there.
ALL_RBS=$(filter-out $(ALL_RBS_EXCLUDED), $(ALL_RBS_RAW))

ALL_OUT_RAW=$(ALL_RBS:.rb=.o)
ALL_OUT=$(subst src,out,$(ALL_OUT_RAW))

ifeq "$(MODE)" "run"
RUBY_OPTS=
else
RUBY_OPTS=-c	# syntax check only for now
endif

TIMEOUT=gtimeout
ifeq "$(SYS)" "linux"
TIMEOUT=timeout
endif

TIMEOUT_OPTS=--preserve-status --foreground --kill-after=6 5

#debug:
#	echo $(ALL_OUT)
#	echo $(TIMEOUT)
#	echo $(OS)
#	echo $(SYS)

all: prepare $(ALL_OUT)

prepare:
	mkdir -p out
	rm -rf out/*

out/%.o: src/%.rb
	-$(TIMEOUT) $(TIMEOUT_OPTS) ruby $(RUBY_OPTS) $< < data/stdin_data.i 2>&1 > $@

clean:
	rm -rf out
