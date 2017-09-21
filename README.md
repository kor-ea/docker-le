# docker-le
## Paths and files:
* ./proxy/ Nginx reverse proxy config
* ./sample1/ Nginx sample website1 config
* ./sample2/ Nginx sample website2 config
* /var/www/sample1 Sample website1 data
* /var/www/sample2 Sample website2 data
* /etc/letsencrypt Letsencrypt certificates
* le.sh Bash script for generating certificates
* docker-composer.yml - containers' configuration

## Instruction
1. Edit ./proxy/default.conf to fit your environment. Ssl directives should be commented out if certificate does not exist.
1. Run 'docker-compose up' to start proxy and sample websites ('docker-compose up -d' for detached mode)
1. Change domains in le.sh 
1. Run le.sh, it will generate certificates for your domains.
1. Uncomment ssl directives in ./proxy/default.conf
1. Reload Nginx by running 'docker exec proxy nginx -s reload' to apply changes in config file.

## Updating certificates
Add to crontab renew.sh script
