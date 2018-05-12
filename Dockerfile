FROM nimmis/alpine-apache-php7
RUN apk update
RUN apk add wget unzip
RUN wget https://suitecrm.com/files/160/SuiteCRM-7.10.4/276/SuiteCRM-7.10.4.zip -O /tmp/SuiteCRM-7.10.4.zip
WORKDIR /tmp
RUN unzip /tmp/SuiteCRM-7.10.4.zip
RUN rm /var/www/localhost/htdocs/index.html; mv -v /tmp/SuiteCRM-7.10.4/* /var/www/localhost/htdocs/
