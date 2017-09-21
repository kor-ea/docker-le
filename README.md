# docker-le
1. Paths and files
* ./proxy/ Nginx reverse proxy config
* ./sample1/ Nginx sample website1 config
* ./sample2/ Nginx sample website2 config
* /var/www/sample1 Sample website1 data
* /var/www/sample2 Sample website2 data
* /etc/letsencrypt Letsencrypt certificates
2. Edit ./proxy/default.conf to fit your environment. Ssl directives should be commented out if certificate does not exist.
3. Run 'docker-compose up' to start proxy and sample websites ('docker-compose up -d' for detached mode)
4. Change domains in le.sh 
5. Run le.sh, it will generate certificates for your domains.
6. Uncomment ssl directives in ./proxy/default.conf
7. Reload Nginx by running 'docker exec proxy nginx -s reload' to apply changes in config file.
