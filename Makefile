HOST	= com2.larch.space
SITE	= cindycolorado.com

RSYNC	= rsync -rltP --del

deploy:
	hugo && $(RSYNC) public/ webdeploy@$(HOST):/usr/local/www/$(SITE)/
