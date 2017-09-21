#!/bin/bash
docker run --rm -it -v "/var/log/letsencrypt:/var/log/letsencrypt" \
		    -v "/var/www/:/var/www/" \
		    -v "/etc/letsencrypt:/etc/letsencrypt" \
		    -v "/var/lib/letsencrypt:/var/lib/letsencrypt" lojzik/letsencrypt certonly \
		    -a webroot \
		    --webroot-path /var/www/ \
                    --email aaa@bbb.cc \
                    --agree-tos \
                    -d docker-le.portmap.io \
                    -d docker-le2.portmap.io 
		
