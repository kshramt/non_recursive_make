all: $(dir)/tmp.dat

$(dir)/tmp.dat:
	touch $@

$(call add,lib)
