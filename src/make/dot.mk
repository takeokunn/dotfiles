DOT_SOURCES = $(wildcard $(MODULE_DIR)/*/dot.*)

CORE_CLEAN_TARGETS += dot-clean
CORE_TARGETS += dot-install

define dot-rule
DOT_TARGETS += $1
$1: $2
	ln -sf $$< $$@
endef

$(foreach source, $(DOT_SOURCES), \
	$(eval \
		$(call \
			dot-rule, \
			$(patsubst dot.%, ~/.%, $(notdir $(source))), \
			$(source) \
		) \
	) \
)

.PHONY: dot-clean
dot-clean:
	rm -f $(DOT_TARGETS)

.PHONY: dot-install
dot-install: $(DOT_TARGETS)
