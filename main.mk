all: $(d)/tmp.dat

$(d)/tmp.dat:
	touch $@

$(call add,src)
$(call add,data)
