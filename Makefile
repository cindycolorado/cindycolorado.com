HOST	= com2.larch.space
SITE	= cindycolorado.com

RSYNC	= rsync -rltP --del

sync:
	hugo && $(RSYNC) public/ webdeploy@$(HOST):/usr/local/www/$(SITE)/

run:
	@hugo server -w --disableFastRender

build:
	@hugo
	@docker pull nginx:alpine
	@docker build . -t xaque208/www:cindycolorado
	@docker push xaque208/www:cindycolorado

deploy:
	@kubectl rollout restart deployments/cindycolorado -n comm

.PHONY: build run deploy sync
