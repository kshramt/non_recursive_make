# GNU Make (> 3.82) is required

rest = $(wordlist 2, $(words $(1)), $(1))

define include_template =
__dir_stack__ := $$(firstword $$(__dir_stack__))/$(1) $$(__dir_stack__)
d := $$(firstword $$(__dir_stack__))
include $$(firstword $$(__dir_stack__))/main.mk
__dir_stack__ := $$(call rest, $$(__dir_stack__))
endef

add = $(eval $(call include_template,$(1)))

__dir_stack__ := .
d := $(firstword $(__dir_stack__))
include $(d)/main.mk
