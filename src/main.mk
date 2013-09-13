all: $(d)/tmp.dat

$(d)/tmp.dat:
	touch $@

$(call add,lib)
