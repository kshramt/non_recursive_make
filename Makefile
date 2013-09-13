rest = $(wordlist 2, $(words $(1)), $(1))

define include_template =
dirs := $$(firstword $$(dirs))/$(1) $$(dirs)
dir := $$(firstword $$(dirs))
include $$(firstword $$(dirs))/main.mk
dirs := $$(call rest, $$(dirs))
endef

add = $(eval $(call include_template,$(1)))

dirs := .
dir := $(firstword $(dirs))
include $(dir)/main.mk
