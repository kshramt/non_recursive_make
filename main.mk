dir := $(lastword $(dirs))

all: $(dir)/tmp.dat

$(dir)/tmp.dat:
	touch $@

$(call add,src)
$(call add,data)
