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
	@docker build . -t reg.dist.svc.cluster.znet:5000/cindycolorado/www:latest
	@docker push reg.dist.svc.cluster.znet:5000/cindycolorado/www:latest

deploy:
	@kubectl rollout restart deployments/cindycolorado -n comm

.PHONY: build run deploy sync
