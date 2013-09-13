chop = $(shell echo $(1) | ruby -e 'puts $$stdin.gets.split[0..-2].join(" ")')

define include_template =
dirs += $$(lastword $$(dirs))/$(1)
dir := $$(lastword $$(dirs))
include $$(lastword $$(dirs))/main.mk
dirs := $$(call chop,$$(dirs))
endef

add = $(eval $(call include_template,$(1)))

dirs := .
dir := $(lastword $(dirs))
include $(dir)/main.mk
