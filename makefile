# Copyright 2015 Wojciech A. Koszek <wojciech@koszek.com>
ALL_RBS_RAW=$(wildcard src/*.rb)
ALL_RBS_EXCLUDED=
ifdef NO_EXCLUDE
include makefile.excludes # will fill ALL_RBS_EXCLUDED. Lots of stuff there.
include makefile.excludes_err # error out in one way or another
endif
ALL_RBS=$(filter-out $(ALL_RBS_EXCLUDED), $(ALL_RBS_RAW))

ALL_OUT_RAW=$(ALL_RBS:.rb=.o)
ALL_OUT=$(subst src,out,$(ALL_OUT_RAW))

ifeq "$(MODE)" "run"
RUBY_OPTS=
else
RUBY_OPTS=-c	# syntax check only for now
endif

SYS:=$(shell uname -s)
ifeq ($(SYS),Darwin)
TIMEOUT=gtimeout
else
TIMEOUT=timeout
endif

TIMEOUT_OPTS=--foreground --kill-after=4 3

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
	-$(TIMEOUT) $(TIMEOUT_OPTS) ruby $(RUBY_OPTS) $< < data/stdin_data.i > $@ 2>&1

clean:
	rm -rf out application.log data.dbm.db data.dbm.dir data.dbm.pag \
		f1 f2 mkmf.log out/ passwd.gz posterity \
		temp.rb tree.yaml
