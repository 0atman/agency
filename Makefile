build:
	docker run -it -v `pwd`:/data schollz/markdown2tufte /bin/bash -c "cd /data && markdown2tufte && useradd $USER && chown -R $USER:$USER public/"
	rm -rf docs
	mv public docs
	echo "agency.oat.sh" > docs/CNAME

serve:
	cd public && caddy
