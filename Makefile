export NGINX_INSTALL_DIR=/home/centos7/nginx
PROJECT=$(shell find . -maxdepth 1 -type d  |grep '^\./[^.]')

all:$(PROJECT)
	for i in $(PROJECT);do if test -f $$i/Makefile; then cd $$i && make && cd ..;  fi; done

clean:
	for i in $(PROJECT);do if test -f $$i/Makefile; then cd $$i && make clean && cd ..;  fi; done

install:
	for i in $(PROJECT);do if test -f $$i/Makefile; then cd $$i && make install && cd ..;  fi; done
