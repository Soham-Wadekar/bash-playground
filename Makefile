setup:
	@chmod +x ./scripts/*.sh
	@./scripts/setup.sh

SCRIPTS := clean start stop

$(SCRIPTS): setup
	@./scripts/$@.sh

restart: stop start

help: setup
	@./scripts/help.sh $(word 2,$(MAKECMDGOALS))

%:
	@: