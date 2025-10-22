default:
	@echo "Usage: make <target>"
	@echo "Targets: setup | start | stop | restart | clean"

setup:
	@chmod +x ./scripts/*.sh
	@./scripts/setup.sh

SCRIPTS := clean start stop

$(SCRIPTS): setup
	@./scripts/$@.sh

restart: stop start
	@echo -n

# help: setup
# 	@./scripts/help.sh $(word 2,$(MAKECMDGOALS))

%:
	@echo "Invalid target. Try: make setup | start | stop | restart | clean"