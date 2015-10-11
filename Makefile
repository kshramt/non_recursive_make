# GNU Make (> 3.82) is required

# Configurations
.SUFFIXES:
.DELETE_ON_ERROR:
.ONESHELL:
export SHELL := /bin/bash
export SHELLOPTS := pipefail:errexit:nounset:noclobber

# Tasks
.PHONY: all

# Functions
rest = $(wordlist 2, $(words $(1)), $(1))

define include_template =
__dir_stack__ := $$(firstword $$(__dir_stack__))/$(1) $$(__dir_stack__)
d := $$(firstword $$(__dir_stack__))
include $$(d)/main.mk
__dir_stack__ := $$(call rest,$$(__dir_stack__))
endef

add = $(eval $(call include_template,$(1)))

# Tasks
.PHONY: all

all:

# Main
__dir_stack__ := $(CURDIR)
d := $(firstword $(__dir_stack__))
include $(d)/main.mk
