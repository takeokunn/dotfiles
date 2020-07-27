IRB_CLEAN_TARGETS += irb-clean
IRB_TARGETS += irb-install
IRB_UPDATE_TARGETS += irb-update

.PHONY: irb-clean
irb-clean:
	gem uninstall irbtools

.PHONY: irb-install
irb-install:
	gem install irbtools

.PHONY: irb-update
irb-update:
	gem update irbtools
