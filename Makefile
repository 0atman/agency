build:
	docker run -it -v `pwd`:/data schollz/markdown2tufte /bin/bash -c "cd /data && markdown2tufte && useradd $USER && chown -R $USER:$USER public/"

serve:
	cd public && caddy
