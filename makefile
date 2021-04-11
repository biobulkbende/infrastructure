.PHONY:

link:
	@mkdir -p ~/.abra/servers/
	@for SERVER in $$(find * -maxdepth 0 -type d); do \
		echo ln -sfF "$$(pwd)/$${SERVER#./}" ~/.abra/servers/ ; \
		ln -sfF "$$(pwd)/$${SERVER#./}" ~/.abra/servers/ ; \
	done
