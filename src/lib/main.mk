dir := $(lastword $(dirs))
all: $(dir)/tmp.dat

$(dir)/tmp.dat:
	touch $@
