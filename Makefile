.PHONY:

Red='\033[0;31m'
Green='\033[0;32m'
Yellow='\033[0;33m'
NC='\033[0m'


build:
	go build -o ./.bin/bot cmd/bot/main.go

set_permission: build
	chmod 744 ./.bin/bot

run: set_permission
	echo -e "${Green} Start HEEEERREEEE ${NC}"
	./.bin/bot